Nullsoft AVS Preset 0.2         Whacko AVS VI - Zero-G Maze III
--------------------------------------------------------

I know, making two version of preset is bad, so why make three? Well, because I still wasn't satisfied with the previous ZG Mazes. Even version II was more of a hack than a nice preset.

Anyway, I think you'll agree with me that this is really how it should've been from the beginning :). I used cylindrical tunnels instead of square ones... it was actually easier on the code side, and it looks 10 times better as well. Secondly, I coded support for incomplete intersections, in order to make it resemble a real maze.

Still: the camera can only enter one of the 2 tunnels along the z-axis. And now you're looking at the preset and watching it zoom about in all directions! How does it work? Well, the camera comes out of the negative Z-tunnel, it rotates and starts accelerating. Just as it is about to enter the next tunnel, the camera is instantly moved back deep into the negative Z-tunnel, with the correct offset so that the texture doesn't skip. To the viewer, this looks like a smooth movement withotu skips, but in fact, there is still only one dynamic intersection.

Another advantage of using cylinders is that there are less ugly edges. The only bad case is where the intersection is a 90� corner, where a sphere is used to cover the hole.


Steven Wittens / UnConeD
steven@acko.net - www.acko.net

(If you wish to use any part of this preset in your own packs you are free to do so, on the condition that you include my contact information) ����u  �  $�   �                                   $   A     px=sin(getosc(i*.33+.33,0,0)*5);
py=sin(getosc(i*.33,0,0)*5);
s=below(abs(px),abs(py));
x=if(s,x,px);
y=if(s,py,y);
hu=t+getosc(i*.33+.66,0,0)*.1+.01;
cv=abs(getosc(i,0,0))*.5;
red=sin(hu)*cv+cv;
green=sin(hu+2.09)*cv+cv;
blue=sin(hu+4.18)*cv+cv; 	   t=t-0.05    t=rand(628)*.01;    n=100       ���    !                    �         (       �$   �   �   r=i*tpi;
x=cos(r); y=sin(r);
s=below(abs(x),abs(y));
x=if(s,x*1.4,sign(x));
y=if(s,sign(y),y*1.4);
cv=abs(getosc(i,0,0))*.2+.01;
red=cv;green=cv;blue=cv; 	   t=t-0.05        n=100;tpi=acos(-1)*2;       ���    �����   � $�   �                            !   �     y=0                              uuu            ����9   �  
$�   �                                                   uuu                              $   �   	   x=0;y=0; V   t=t+0.02;red=sin(hue+t)*.5+.5;green=sin(hue+2.09+t)*.5+.7;blue=sin(hue+4.18+t)*.5+.9;    hue=hue+rand(314)*.01    n=1;t=0       ���        %   �     x=0;y=0                    ����9   �$�   �                                          +   �  �  � Set up rays;
qy=y*af;
dx1=x*cz-qy*sz;dy1=x*sz+qy*cz;
dy2=dy1*cx-sx*.85;dz2=dy1*sx+cx*.85;
dx3=dx1*cy-dz2*sy;dz2=dx1*sy+dz2*cy;
qx=sqr(dx3);qy=sqr(dy2);qz=sqr(dz2);
jx=dx3*ox;jy=dy2*oy;jz=dz2*oz;

� Solve intersection sphere;
dx1=qx+qy+qz;dy1=(jy+jx+jz);
x=(sqr(dy1)-dx1*(sqr(oy)+sqr(ox)+sqr(oz)-(rm*6.5+3.99)));
r=(dy1+sqrt(x))/dx1;r=if(below(x,0),-1000,r);

� Solve cylinder along z-axis;
dx1=qx+qy;dy1=(jy+jx);
x=(sqr(dy1)-dx1*(sqr(oy)+sqr(ox)-4));
k1=(dy1+sqrt(x))/dx1;k1=if(below(x,0),-1000,k1);
� Exclude disabled tunnels;
zfix=band(bnot(pat%2),above(dz2*k1-oz,0));
k1=if(zfix,-1000,k1);

� Solve cylinder along x-axis;
dx1=qz+qy;dy1=(jy+jz);
x=(sqr(dy1)-dx1*(sqr(oy)+sqr(oz)-4));
k2=(dy1+sqrt(x))/dx1;k2=if(below(x,0),-1000,k2);
� Exclude disabled tunnels;
k2=if(band(bnot(above(pat,15.99)),below(dx3*k2-ox,0)),-1000,k2);
k2=if(band(bnot(above(pat%16,7.99)),above(dx3*k2-ox,0)),-1000,k2);


� Solve cylinder along y-axis;
dx1=qz+qx;dy1=(jx+jz);
x=(sqr(dy1)-dx1*(sqr(ox)+sqr(oz)-4));
k3=(dy1+sqrt(x))/dx1;k3=if(below(x,0),-1000,k3);
� Exclude disabled tunnels;
k3=if(band(bnot(above(pat%8,3.99)),below(dy2*k3-oy,0)),-1000,k3);
k3=if(band(bnot(above(pat%4,1.99)),above(dy2*k3-oy,0)),-1000,k3);

� Find intersection point and texture it;
ix=dx3*k1-ox;iy=dy2*k1-oy;iz=dz2*k1-oz;
qy=r;
r=if(bor(below(sqrt(sqr(ix)+sqr(iy)+sqr(iz)),2.8284),zfix),max(max(qy,k3),max(k2,k1)),k1);
ix=dx3*r;iy=dy2*r;iz=dz2*r;
d=sqrt(ix*ix+iy*iy+iz*iz);
ix=ix-ox;iy=iy-oy;iz=iz-oz;
x=if(equal(r,k1),asin(sin(abs(atan2(ix,iy))))*0.317*8-4,x);
x=if(equal(r,k2),asin(sin(abs(atan2(iz,iy))))*0.317*8-4,x);
x=if(equal(r,k3),asin(sin(abs(atan2(ix,iz))))*0.317*8-4,x);
x=if(equal(r,qy),asin(sin(abs(atan2(ix,iz))))*0.317*8-4,x);

y=if(equal(r,k1),iz,y);
y=if(equal(r,k2),abs(ix),y);
y=if(equal(r,k3),abs(iy),y);
y=if(equal(r,qy),asin(sin(abs(atan2(iy,sqrt(sqr(ix)+sqr(iz))))))*2,y);

alpha=min(1,max(0,4.05*exp(-d*.5)));
 �  t=t+0.005+ti*.1;pt=pt-.05;

ryt=if(equal(pat,8),1,0);
ryt=if(equal(pat,9),1,ryt);
ryt=if(equal(pat,10),1,ryt);
ryt=if(equal(pat,13),1,ryt);
ryt=if(equal(pat,15),1,ryt);
ryt=if(equal(pat,16),-1,ryt);
ryt=if(equal(pat,18),-1,ryt);
ryt=if(equal(pat,19),-1,ryt);
ryt=if(equal(pat,24),1,ryt);
ryt=if(equal(pat,27),-1,ryt);
ryt=if(equal(pat,29),1,ryt);
ryt=if(equal(pat,31),1,ryt);

rxt=if(equal(pat,2),1,0);
rxt=if(equal(pat,3),1,rxt);
rxt=if(equal(pat,4),-1,rxt);
rxt=if(equal(pat,5),-1,rxt);
rxt=if(equal(pat,6),1,rxt);
rxt=if(equal(pat,11),1,rxt);
rxt=if(equal(pat,12),-1,rxt);
rxt=if(equal(pat,14),1,rxt);
rxt=if(equal(pat,20),-1,rxt);
rxt=if(equal(pat,21),-1,rxt);
rxt=if(equal(pat,22),1,rxt);
rxt=if(equal(pat,23),1,rxt);
rxt=if(equal(pat,26),1,rxt);
rxt=if(equal(pat,28),-1,rxt);
rxt=if(equal(pat,30),-1,rxt);

qz=bor(equal(pat,25),bor(equal(pat,17),equal(pat,7)));

� Phase 0: Rotation;
rxt=-rxt*acos(-1)*.5;
ryt=-ryt*acos(-1)*.5;
x=(rx-rxt);rx=if(ph,rx,if(below(abs(x),.05),rxt,rx-sign(x)*.13*(.1+sin(abs(x*2)))));
y=(ry-ryt);ry=if(ph,ry,if(below(abs(y),.05),ryt,ry-sign(y)*.13*(.1+sin(abs(y*2)))));
oz=if(ph,oz,if(qz,oz-.3,oz*.9*min(1,max(abs(x),abs(y)))));

� Phase 1: Acceleration;
oz=if(band(equal(ph,1),qz),oz-.3,oz);
ph=if(ph,ph,if(if(qz,below(oz,.5),band(equal(rx,rxt),equal(ry,ryt))),1,ph));
x=min(1,(.1+abs(ox)+abs(oy)))*.3;
ox=if(equal(ph,1),ox+sign(ryt)*x,ox);
oy=if(equal(ph,1),oy+sign(rxt)*x,oy);
x=if(equal(ph,1),if(above(if(qz,sqr(oz),sqr(ox)+sqr(oy)),4),1,0),0);
ph=if(x,2,ph);
rx=if(x,0,rx);ry=if(x,0,ry);
oz=if(x,14,oz);
ox=if(x,0,ox);oy=if(x,0,oy);

� Decide intersection shape and optional room;
pat=if(x,rand(30)+2,pat);
rm=if(x,equal(rand(40),1),rm);

� Phase 2: Slow down;
oz=if(equal(ph,2),oz-.3,oz);
ph=if(band(equal(ph,2),below(abs(oz),3)),0,ph);
rz=t+sin(t*4-3.1415)*.25;

x=sin(pt*.914)*cos(pt*.141)*cos(sin(pt*.411))*.7;
cx=cos(rx+x);sx=sin(rx+x);cy=cos(ry+.001);sy=sin(ry+.001);cz=cos(rz);sz=sin(rz);

af=h/w;
ti=ti*.9;

    ti=rand(2)*2-1;    t=0;pat=rand(30)+2;ph=0;                          