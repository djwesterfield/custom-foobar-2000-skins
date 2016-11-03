/!\ You need the last versions of plugins /!\
Plugins Required :

foo_playlist_tree http://wiki.bowron.us/index.php/Foobar2000:Playlist_Tree
foo_explorer http://www.hydrogenaudio.org/forums/index.php?showtopic=34207
foo_run http://www.hydrogenaudio.org/forums/index.php?showtopic=45223
foo_ui_columns - http://yuo.be/columns.php
foo_ui_panels - http://www.hydrogenaudio.org/forums/index.php?showtopic=52465
foo_uie_albumart http://www.hydrogenaudio.org/forums/index.php?showtopic=39924&st=825#
foo_uie_albumlist - http://yuo.be/columns.php
foo_uie_quicksearch - http://www.hydrogenaudio.org/forums/index.php?showtopic=44012
foo_cwb_hooks - http://wiki.bowron.us/index.php/Foobar2000:Hooks
foo_uie_lyrics_panel 0.35
foo_uie_wmvis http://acropolis.lokalen.org/2006/10/foobar2000/my-foobar2000-components
foo_uie_playlists_dropdown http://www.hydrogenaudio.org/forums/index.php?showtopic=44703

This is a no titlebar skin which aim is to give an easy and fully customisable way of using it.

In the layout globals you can change panels size, colors, font....
You can also set order and visibility :

- for each panel in layout globals you ll have to put a number representing his position starting at 0. If you put -1 the panel will be hidden. Be carefull not to put the same number to 2 differents panels or it can create strange effects.

Last you can also set multiples options like viewing infos in the album art panel.

As this theme is made to be without titlebar, you can use a software like HSI to reserve space for foobar so that maximised applications wont go over foobar. I use it to reserve 280 px wide space on the left of my desktop

////THEMES////
This skin is based on grounded VS and is made to be used with it. So as for the VS there is 4 styles. They can be changed by switching the variable theme in Layout->globals
But when you change the theme not everything will be changed, you ll have to change things in the settings. I give everything that s necessary bellow

////ALBUM ART////

To have your album art you have to change it in two places. First on the albumart panel. Do a right click prefernces->sources. I gave an example bellow
Now you also have to change it into preferences->panelsUI->UserGlobals
Personnaly i have this :


////CONFIG////

here is my layout selector for SCPL which aim is to do Singles layout by button or
with the playlist named Divers.
$setpvar(coverPath,$replace(%path%,%filename_ext%,folder.jpg))
$setpvar(artistPath,F:\Artists\%artist%.jpg)

/!\ Be careful for this part you cannot put * in the variables coverPath and artistPath because i test the existence of the file so it wont work /!\




////LAYOUT SELECTOR//// (preferences PanelsUI/sort/group)
$if($strcmp(%playlistname%,Divers),
$ifgreater($getpvar(SCPSingleart),0,
$scplsetlayout(Singles),
$scplsetlayout(SinglesNoArt)
),
$if($isgrouped(album),
$scplsetlayout(Album),
$ifgreater($getpvar(SCPSingleart),0,
$scplsetlayout(Singles),
$scplsetlayout(SinglesNoArt)
)
)
)

////SORT GROUP CRITERIA//// (preferences PanelsUI/sort/group)
Album :
   primary sort : %album%
   secondary sort : %discnumber% %tracknumber%
   group by : %album%
   group by sort : unchecked
   
Album Artist:
   primary sort : $if($get(album_artist),,$put(album_artist,$upper(%album artist%)))
   secondary sort : %date% %title%
   group by : 
   group by sort : checked

Singles :
   primary sort : 
   secondary sort : 
   group by : 
   group by sort : unchecked


right button on SCPL, Sort, Group by ->Edit ->
Reset ->
left button Date
right button Album Artist
right button Album 
Save ->Album

Reset -> 
Save ->Singles

////////

Font: see layout globals for what fontupper and fontlower refer to


Quick Search Toolbar config :
No edge
Icon : searchicon.bmp in PanelsUI/images/chiral
background color : 46-44-42(bite,gee)108-91-75(fraud)176-174-172(light)
background error color : 46-44-42(fraud,light)108-91-75(fraud)176-174-172(light)
text color :170-170-170(bite,gee) 0-0-0(fraud,light)
text error color : 255-0-0

Album List Panel : 
No edge
background color : 42-40-38(bite,gee)104-88-72(fraud)172-170-169(light)
Line color :  42-40-38(bite,gee)104-88-72(fraud)172-170-169(light)
Text Color : 170-170-170(bite,gee) 0-0-0(fraud,light)
fontlower 

Playlist switcher :
No edge
background color : 42-40-38(bite,gee)104-88-72(fraud)172-170-169(light)
selection background color : 32-30-28(bite,gee)94-80-65(fraud)142-140-138(light)
selection background inactive color : 32-30-28(bite,gee)94-80-65(fraud)142-140-138(light)
text color : 170-170-170(bite,gee) 0-0-0(fraud,light)
text selected color : 129-115-81(bite)92-140-152(gee)172-170-169(fraud)104-88-72(light)
inactive text selected color : 129-115-81(bite)92-140-152(gee)172-170-169(fraud)104-88-72(light)
fontlower 
title formatting :
%title%

$if(%is_active%,' (active'$if(%is_playing%,', playing')')',$if(%is_playing%,' (playing)'))
$tab(3)[ '('%lock%')']$tab(2)
' ('%length%')'



Lyrics Show Panel:
No edge
background color : 42-40-38(bite,gee)104-88-72(fraud)172-170-169(light)
Normal Color : 170-170-170(bite,gee) 0-0-0(fraud,light)
Highline Color : 129-115-81(bite)92-140-152(gee)172-170-169(fraud)104-88-72(light)
fontlower 


Album art panels :
No edge
background color : 42-40-38(bite,gee)104-88-72(fraud)172-170-169(light)
Draw border : 0-0-0
Ablum art sources :
$replace(%path%,%filename_ext%,)folder.jpg
$replace(%path%,%filename_ext%,)back.jpg

Artist art sources :
F:\Artists\%artist%*.jpg
The rest is to put to your desire

Playlist Dropdown Panel : just put the good VS and press "Reset Colors to current Window Theme"
