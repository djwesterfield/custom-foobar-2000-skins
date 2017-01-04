Texture1D tex : WAVEFORMDATA;
Texture2D seekTex < string filename = "seekbar.png"; >;

SamplerState sTex
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Clamp;
};

struct VS_IN
{
	float2 pos : POSITION;
};

struct PS_IN
{
	float4 pos : SV_POSITION;
	float2 tc : TEXCOORD0;
};


float4 backgroundColor : BACKGROUNDCOLOR;
float4 highlightColor  : HIGHLIGHTCOLOR;
float4 selectionColor  : SELECTIONCOLOR;
float4 textColor       : TEXTCOLOR;
float cursorPos        : CURSORPOSITION;
bool cursorVisible     : CURSORVISIBLE;
float seekPos          : SEEKPOSITION;
bool seeking           : SEEKING;
float4 replayGain      : REPLAYGAIN; // album gain, track gain, album peak, track peak
float2 viewportSize    : VIEWPORTSIZE;
bool horizontal        : ORIENTATION;
bool shade_played      : SHADEPLAYED;

PS_IN VS( VS_IN input )
{
	PS_IN output = (PS_IN)0;

	output.pos = float4(input.pos, 0, 1);
	if (horizontal)
		output.tc = float2((input.pos.x + 1.0) / 2.0, input.pos.y);
	else
		output.tc = float2((-input.pos.y + 1.0) / 2.0, input.pos.x);

	return output;
}

float4 bar( float pos, float2 tc, float4 fg, float4 bg, float width, bool show )
{
	float dist = abs(pos - tc.x);
	float4 c = (show && dist < width)
		? lerp(fg, bg, smoothstep(0, width, dist))
		: bg;
	return c;
}

float4 grayscale( float4 color )
{
	return color.r * 0.3 + color.g * 0.59 + color.b * 0.11;
}

float4 sepia( float4 color )
{
	float4 weight;
	weight.r = 0.3;
	weight.g = 0.59;
	weight.b = 0.11;
	weight.a = 0;
	
	float4 adjust;
	adjust.r = 0.098039215686275;
	adjust.g = -0.050980392156863;
	adjust.b = -0.26274509803922;
	adjust.a = 0;
	
	float intensity = dot(color, weight)	;
	color = intensity + adjust;
	return saturate(color);
}

float4 contrast( float4 color, float strength )
{
	return saturate((color - 0.5) * strength + 0.5);
}

float4 played( float pos, float2 tc, float4 fg, float4 bg, float alpha)
{
	float4 c = bg;
	if (pos > tc.x)
	{
#if 0
		c = contrast(c, fg.r * 2);
		c = lerp(c, sepia(c), fg.g);
		c = lerp(c, grayscale(c), fg.b);
#else
		c = grayscale(c);
		//c = sepia(c);
#endif
	}
	return c;
}

float4 evaluate( float2 tc, float border )
{
	// alpha 1 indicates biased texture
	float4 minmaxrms = tex.Sample(sTex, tc.x);
	minmaxrms.rgb -= 0.5 * minmaxrms.a;
	minmaxrms.rgb *= 1.0 + minmaxrms.a;

	float belowWave = tc.y + border - minmaxrms.r;
	float aboveWave = tc.y - border - minmaxrms.g;
	float factorWave = min(abs(belowWave), abs(aboveWave));
	bool insideWave = (belowWave > 0 && aboveWave < 0);
	
	float diffRms = abs(tc.y) - border - minmaxrms.b;
	float factorRms = abs(diffRms);
	bool insideRms = diffRms < 0;
	
	float factor = insideRms ? (1.0 - 0.5 * saturate(factorRms / border / 2)): 1.0;
	factor = insideWave ? (factor * saturate(factorWave / border / 2)) : 0.0;

	float4 wave = lerp(backgroundColor, textColor, factor);

	return saturate(wave);
}

float4 PS( PS_IN input ) : SV_Target
{
	float dx, dy;
	if (horizontal)
	{
		dx = 1/viewportSize.x;
		dy = 1/viewportSize.y;
	}
	else
	{
		dx = 1/viewportSize.y;
		dy = 1/viewportSize.x;
	}
	float seekWidth = 2.5 * dx;
	float positionWidth = 2.5 * dx;
	
	float4 c0 = evaluate(input.tc, 2.5 * dy);
	if (shade_played)
		c0 = played(cursorPos, input.tc, highlightColor, c0, 0.3);
	c0 = bar(cursorPos, input.tc, selectionColor, c0, positionWidth, cursorVisible);
	c0 = bar(seekPos,   input.tc, selectionColor, c0, seekWidth,     seeking      );
	return c0;
}

technique10 Render10
{
	pass P0
	{
		SetGeometryShader( 0 );
		SetVertexShader( CompileShader( vs_4_0, VS() ) );
		SetPixelShader( CompileShader( ps_4_0, PS() ) );
	}
}

technique Render9
{
	pass
	{
		VertexShader = compile vs_2_0 VS();
		PixelShader = compile ps_2_0 PS();
	}
}
