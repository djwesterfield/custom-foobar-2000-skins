Nullsoft AVS Preset 0.2    `  \  Whacko AVS II - Cubic Flower
------------------------------------------------

This is a beefed up version of the cube Dynamic Movement. I've added fog, but with a different formula which neatly hides the messed-up edges. The camera is a bit 'fish-eyed' (the view-angle is roughly 120�) to show more of the cube at once. I also fixed the x/y aspect like in Alien Chessboard. It's now a real cube, and not a squashed one.

The actual flower is a fountain that is passed through a dynamic movement and a water-filter.


UnConeD / Steven Wittens
[ steven@acko.net - www.acko.net ]

(If you wish to use this preset partially or whole in your own presets or packs, you should first mail me. I will practically never deny your request, but I like to know who uses my presets. This copyright message should also be included completely in your preset.)

       0       ����  �   �   �                         (/       (       �                         + "   @  [   t(  +   �   $   t=d; 
d=d+cos(r*rf+o)/20;
r=r+do;    o=o+do
do=do*.25+dt*.75 $   do=(rand(30)-15)/50;
rf=rand(4)+3;    tsc=0;                                               (        �$     �   x=i*.8-.4;y=0;
red=sin(t+ro+i*2)/2+.5+aa;
green=sin(t+go+i*2)/2+.5+aa;
blue=sin(t+bo+i*2)/2+.5+aa;
blue=blue+1-min(red+green+blue,1)    t=t-0.05;aa=aa*0.7; G   aa=1;ro=rand(100)/100*6.28;go=rand(100)/100*6.28;bo=rand(100)/100*6.28    n=40;ro=0;go=2.0;bo=4.0                 )   �     x=x/2.5;y=0                   +   �  �  x=cos(r)*d;y=sin(r)*d;
dx=x;dy=y;dz=0.40;
dx1=dx*cz-dy*sz;
dy1=dx*sz+dy*cz;
dy2=dy1*cx-dz*sx;
dz2=dy1*sx+dz*cx;
dx3=dx1*cy-dz2*sy;
dz3=dx1*sy+dz2*cy;
k1=abs((-1)/dy2);
k2=abs((-1)/dx3);
k3=abs((-1)/dz3);
k=min(min(k1,k2),k3);
ix=dx3*k;iy=dy2*k;iz=dz3*k;
x=if(equal(k,k1),-ix,-iy);
y=if(equal(k,k3),ix,iz);
d=max(max(sqrt(ix*ix+iy*iy),sqrt(ix*ix+iz*iz)),sqrt(iy*iy+iz*iz));
alpha=7/d-5.2;
 %  t=t+0.3;;
rx=rx+rxo-0.02*cos(t/11)*cos(t/20)*sin(sin(t/9));
ry=ry+ryo+0.02*sin(t/10)*cos(t/22)*sin(cos(t/31));
rz=rz+rzo+0.02*sin(t/12)*cos(t/23)*sin(cos(t/11));
cx=cos(rx);sx=sin(rx);cy=cos(ry);sy=sin(ry);cz=cos(rz);sz=sin(rz);
rxo=(rxo*3+rxt)/4;
ryo=(ryo*3+ryt)/4;
rzo=(rzo*3+rzt)/4; Q   rxt=(rand(80)/320)*sign(-rxt);
ryt=(rand(80)/320)-0.1;
rzt=(rand(80)/320)-0.1; G   t=0;rx=1.57;ry=1.57;rx=0;ry=0;rz=0;rxo=0;ryo=0;rzo=0;rxt=0;ryt=0;rzt=0                            