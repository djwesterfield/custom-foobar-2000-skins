Nullsoft AVS Preset 0.2    f  b      _________           /                                                      
  /_____       /         /      Hexual Healing
      ___/     /         /             by Sander Kupers
    /__       /         /___________________________
         /    /         /                                                        \         019
       /__/         /____________________                    \___________
___________/                                         \
                               Comments:                  \____________________

The colormap is what makes this preset nice, try removing it and see how horrible it is without the colormap. The 3d-dynmov is based of the LP6 preset Sixtet 002's dynmov. The most time for this preset went into making the stars rotate correctly, which proved itself to be quite difficult.

Recommended listening:
          Boards of Canada - Turquoise Hexagon Sun ( 5:07 )
                        ____________________
___________/                                         \
                               Contact Info                \____________________

Created by Sander Kupers
           www: skupers.deviantart.com
           email: skupers@softhome.net
                        ____________________
___________/                                         \
                               Copyright Control         \____________________

All the code and bitmaps in this preset has been created by me, Sander Kupers  unless stated otherwise in the Preset Info section. Please ask  permission before using any part of this preset. Most of the time I will  give permission, but I would just like to know who uses parts of my  presets and/or code.
                        ____________________
___________/                                         \
                         (c) 2003 Sander Kupers     \____________________
 ţ˙˙˙Ż	     $                             ţ˙˙˙  $                                                    &                     ţ˙˙˙    $                             $   G      s=bnot(s);
x=0;y=i-0.5; 	   t=t-0.05        n=2              "   ˙     x=0;                    (       $   P   !   x=i*2-1;y=(v*0.5+0.5)*6%6/6-0.5; 	   t=t-0.05        n=20       ˙˙˙    $   =      x=i*2-1;y=0.5; 	   t=t-0.05        n=2       ˙˙˙    $   >      x=i*2-1;y=-0.5; 	   t=t-0.05        n=2       ˙˙˙                                               $   4  Ę  rg1=asin(sin(rg1*pi+s2*rg1));
rg2=asin(sin(rg2*pi+s2*rg2*1.2));
rg3=asin(sin(rg3*pi+s2*rg3*1.1));
z1=rg1*20-10;x1=rg2*20-10;y1=rg3*20-19;
x1d=x1*cy-z1*sy;
z1d=x1*sy+z1*cy;
y2d=y1*cx-z1d*sx;
z2d=y1*sx+z1d*cx;
x3d=x1d*cz-y2d*sz;
y3d=x1d*sz+y2d*cz;
zi=1/(z2d+3);
x=if(above(z2d+3,0.1),x3d*zi,x)*xasp;
y=if(above(z2d+3,0.1),y3d*zi,y)*yasp;

alpha=if(below(z2d+2.4,0),0,1)*min(1/sqrt(x1*x1+y1*y1+z1*z1)*20,1);
red=alpha;
green=alpha;
blue=alpha; Ľ   m=m+0.02;rg1=0.1;rg2=2;rg3=3;rx=rx-rxo;rxo=rxo*0.99;ry=ry-ryo;ryo=ryo*0.99;rz=rz-rzo;rzo=rzo*0.95;cx=cos(rx);sx=sin(rx);cy=cos(ry);sy=sin(ry);cz=cos(rz);sz=sin(rz); b   rxo=getosc(0.5,0.02,0)/12;ryo=getosc(0.3,0.02,0)/12;rzo=if(s,getosc(0.7,0.02,0)/6,rzo);s=bnot(s); B   s=0;n=250;pi=acos(-1);xasp=min(h/w,1);yasp=min(w/h,1);s2=sqrt(2);       ˙˙˙     ¤ŔŔTexer                                            đ?skupers_lp7_01.bmp                                                                                                                                                                                                                                                  	          +   Ô  G  x1=x;y1=y;z1=0.8+zl;
x1d=x1*cz-y1*sz;
y1d=x1*sz+y1*cz;
y2d=y1d*cx-z1*sx;
z2d=y1d*sx+z1*cx;
x3d=x1d*cy-z2d*sy;
z3d=x1d*sy+z2d*cy;
k1=abs((-1)/(x3d-y2d*0.5));
k2=abs((-1)/y2d);
k3=abs((-1)/z3d);
k4=abs((-1)/(x3d+y2d*0.5));
k=min(k1,min(k2,min(k3,k4)));
x=k*x3d;
y=k*z3d;
alpha=if(equal(k,k3),0,1)*(1-abs(z3d)*1.2); ź   rx=rx+rxo;rxo=rxo*0.99;
ry=ry+ryo;ryo=ryo*0.99;
rz=rz+rzo;rzo=rzo*0.95;
cx=cos(rx);sx=sin(rx);
cy=cos(ry);sy=sin(ry);
cz=cos(rz);sz=sin(rz);
zm=zm+zmr;zmr=zmr*0.93;
zl=sin(zm)*0.1;    rxo=getosc(0.5,0.02,0)/12;
ryo=getosc(0.3,0.02,0)/12;
rzo=if(s,getosc(0.7,0.02,0)/6,rzo);
zmr=if(1-s,getosc(0.9,0.01,0)/6,zmr);
s=bnot(s);    pi=acos(-1);s=0;                            ¸ădColor Map                       Ô                       pg                                                       Pg                                                       0g                                                       g                                                       đg                                                       Đg                                                       °g                                                       g                                                      #H  %   ˙  r  S   ˙˙˙       Ëţ )   ˙    ˙ >J              ˙   ˙˙˙                ˙   ˙˙˙                ˙   ˙˙˙                ˙   ˙˙˙                ˙   ˙˙˙                ˙   ˙˙˙                ˙   ˙˙˙    