Nullsoft AVS Preset 0.2    5  1   Whacko AVS V - Zero-G Maze II
------------------------------------------------------

Remember this one? I remember the main comment on Zero-G Maze was that the camera should've gone into the tunnels rather than swirling around an intersection.

Ask and you shall be served... this majorly improved version looks and behaves a lot better, and of course it enters tunnels too.

However there is a catch. I had to take a shortcut which is luckily not so noticable: the camera always picks the same tunnel. This is because the code for allowing it to go in any direction is too complicated because AVS lacks decent code control structures.

The reason it's not noticable is because the camera rotates around quite a lot and you get disoriented easily.

-------------------------------------------------
UnConeD / Steven Wittens
[ steven@acko.net - www.acko.net ]

(If you wish to use this preset partially or whole in your own presets or packs, you may do so provided that a clear credit message is included in your preset, along with my contact information.) �����  �  $�   �                          (       �                      $   �   �   px=sin((getosc(i*.5,0,0)+rand(2)*.01)*3.14);py=sin(getosc(i*.5+.5,0,0)*3.14);
pc=above(abs(px-x),abs(py-y));
x=if(pc,px,x);
y=if(pc,y,py);
red=cv;green=1;blue=cv;    t=t-0.05;px=0;py=0;x=0;y=0;    cv=rand(100)*.01;    n=20;       ���                     ����d   � $�   �                            #   �     y=0.1                                    ����
  �   $�   �                          �����   �  $�   �                         $   �   Q   x=0;y=0;
red=sin(hu)*.5+.5;
green=sin(hu+2.09)*.5+.5;
blue=sin(hu+4.18)*.5+.5        hu=rand(628)*.01    n=1       ���        !   �     d=0                     +   g  �  y=y*af+.0001;x=x+.0001;
dx1=x*cz-y*sz;
dy1=x*sz+y*cz;
dy2=dy1*cx-.9*sx;
dz2=dy1*sx+.9*cx;
dx3=dx1*cy-dz2*sy;
dz3=dx1*sy+dz2*cy;
k1=(oz+ozf+sign(dz3))/dz3;
k1=if(below(k1,0),-1000,k1);
k2=(oy+sign(dy2))/dy2;
k2=if(below(k2,0),-1000,k2);
k3=(ox+sign(dx3))/dx3;
k3=if(below(k3,0),-1000,k3);
dx1=max(min(max(k1,k2),k3),min(max(k2,k3),k1));
dy1=min(k2,k3);
iz=-oz-ozf+dz3*dy1;k=if(below(abs(iz),.99),dx1,dy1);
ix=-ox+dx3*k;iy=-oy+dy2*k;iz=-oz-ozf+dz3*k;
kw=equal(k,-1000);alpha=1-kw;
x=if(equal(k,k2),ix*sign(iy),if(equal(k,k3),iy*sign(ix),ix));
y=if(equal(k,k2),iz,if(equal(k,k3),iz,iy*sign(iz)));
d=sqrt(sqr(ix+ox)+sqr(iy+oy)+sqr(iz+oz+ozf));
alpha=if(below(k,0),0,2/d-.15);d=t*.03;
x=x+d;
y=y+d; s  t=t-0.5;ct=if(equal(md,3),t,ct);
ox=sin(t*.0914)*cos(t*.0411)*.8;
oy=sin(t*.0674)*cos(t*.0379)*.8*cos(sin(t*.0471));
ozf=sin(t*.0346)*cos(t*.0493)*.8*cos(sin(t*.0116));
dx1=sin(t*.0373)*cos(t*0.0563)*sin(cos(t*.0231))*1.1;
dy1=sin(t*.0311)*cos(t*0.061)*sin(cos(t*.0115))*1.1;
ozo=-max(min((abs(oz)+(1-cn))*.3,.3),.01);
oz=if(above(md,1),oz+ozo,0);
oz=if(below(oz,-10),oz+30,oz);
md=if(band(above(oz,3),equal(md,2)),3,md);
md=if(band(below(abs(oz),.11),equal(md,3))*rand(2)*cn,0,md);
md=if(band(equal(md,1),below(max(abs(rx),abs(ry)),.1)),2,md);
md=if(md,md,above(ct-t,85+rand(10)*.5));
k1=equal(md,1);
rxo=if(k1,if(below(abs(rx),.1),0,if(below(sd,2),.05,-.05)),rxo*below(md,1));
ryo=if(k1,if(below(abs(ry),.1),0,if(sd%2,.05,-.05)),ryo*below(md,1));
rxt=if(k1,0.1*(rand(2)*2-1),rxt);ryt=if(k1,0.1,ryt);
ry=if(above(abs(ry),pi),ry-2*pi*sign(ry)+ryo,ry+ryo);
rx=if(above(abs(rx),pi),rx-2*pi*sign(rx)+rxo,rx+rxo);
rz=rz+sin(t*.053)*cos(t*.117)*sin(cos(t*.0651))*.1;
cx=cos(rx+dx1);sx=sin(rx+dx1);cy=cos(ry+dy1);sy=sin(ry+dy1);cz=cos(rz);sz=sin(rz);
af=h/w;rxo=rxo*.8+rxt*.2;ryo=ryo*.8+ryt*.2;
cn=if(above(bt-t,75),1,cn); �   rxt=(rand(100)*.01)*(rand(2)*2-1)*.09;
ryt=(rand(100)*.01)*(rand(2)*2-1)*.09;
md=if(md,md,above(t-ct,40));
cn=1-rand(2)*rand(2)*rand(2);
bt=t;
sd=if(rand(9),sd,rand(4)); G   t=rand(100);pi=acos(-1);rxt=.01;ryt=-.0113;md=0;ozo=-0.1;cn=1;bt=t+77;                             