Nullsoft AVS Preset 0.2    �  �              /     _________________        ________________________ 
  18    /     /                                /       /                            
        /     /        ____________/       /        AVS-Kingish
___/     /        /                               /__________________________
           /        /___________          ___________________________
         /                                /        /
       /        ________        /        /       by Sander Kupers
     /        /               /      /        /       aka. S_KuPeRS
   /        /________/     /        /______________________________
 /                                 /         _______________________________ 
/________________/         /
                                          /        email: skupers@softhome.net
____________________/        www: skupers.devianart.com
______________________________________________________

        Preset info:
 It's shouldn't be difficult to see which artist inspired this preset. For other colors you can change the colors of the starfields and the moving particles. Oh, and if you don't like the liney smoothing effectlist thingie, you can just disable the second effectlist. This will increase your fps with about 15 fps, but it also runs very smooth with the effeclist on.
______________________________________________________

        Music tips:
 This preset craves beats to look good and one thing Aphex Twin's Drukqs doesn't miss is beats. As an album this double cd isn't that good, but there are some great tracks on it. Try eg. Vordhosbn, Cock/ver10 or Mt.SaintMichel+SaintMichealsMount. 
______________________________________________________

        Speedup tips:
   - Disable the second effeclist
______________________________________________________

        Disclaimer and warning:
 All the code in this preset has been created by me, Sander Kupers    unless stated otherwise in the Preset Info section. Please ask    permission before using any part of this preset. Most of the time I will    give permission, but I would just like to know who uses parts of my    presets and/or code.
______________________________________________________

 (c) 2002 Sander Kupers �����  �   $�   �                                   �����   �  $�   �                                                     @                            @                  $      ��          R��@%     
�#<      $       S�           �@     
�#<   +   �  �   x=x+xm;y=y+ym;
d=sqrt(x*x+y*y);r=atan2(x,y);
d=d*0.98+(sin(r*re+d1)/20+sin(sqrt(d/(0.5+d))*5+d1)/20)*max(1-d,0);
r=r+sin(d*8+d2)*sin(r*re*2+d1)/4*max(1-d,0);
x=sin(r)*d-xm;y=cos(r)*d-ym; c   x1=x1+x1r;xm=sin(x1)/2;
y1=y1+y1r;ym=sin(y1)/2;
d1=d1+d1r;d1r=d1r*0.93;
d2=d2+d2r;d2r=d2r*0.97; p   x1r=rand(10)/100-0.05;
y1r=rand(10)/100-0.05;
d1r=rand(100)/100-0.5;
d2r=rand(10)/100-0.05;
re=(rand(4)+2);           (                     ����a   � $�   �                                      (                                      