�GSC
     �  n  �  t  �  �  �  �      @ X           maps/mp/_imcsx_gsc_studio.gsc maps/mp/_utility common_scripts/utility maps/mp/gametypes_zm/_hud_util maps/mp/gametypes_zm/_hud_message init setcurelocation create_dvar infected_start_round infected_infect_chance infected_infect_timer infected_infect_decrease infected_cure_price onplayerconnect connected player onplayerspawned disconnect game_ended isinfected infectedhud bloodinfecthud playerdamagecheck infectioncountdown createcureicon curestationloc createplayerinfecticon spawned_player iprintln ^4Infected mod ^7created by ^1techboy04gaming dvar set  setdvar spawncureplatform x y z curemodel spawn script_model setmodel zombie_skull curetrigger trigger_radius sethintstring ^7The power must be activated first! setcursorhint HINT_NOICON mapname zm_tomb zm_prison power_on ^7Press ^3&&1 ^7to cure from infection ^7 [Cost:  ] trigger i usebuttonpressed score cure_player playsound zmb_weap_wall damage amount attacker dir point mod maps/mp/animscripts/zm_utility is_zombie chance randomintrange round_number infect infecttimer end_game infected_hud newclienthudelem alignx center aligny top horzalign user_center fontscale alpha color hidewheninmenu foreground label Infected! Find a cure skull! -  setvalue cure_icon archived setshader specialty_instakill_zombies setwaypoint infection_icon newhudelem origin ifdownedwhileinfected player_cured waittill_any_return fake_death death player_downed setblur ignoreme g_gametype zgrief zstandard zm_buried zm_nuked zm_transit ui_zm_mapstartlocation town transit farm zm_highrise dodamage health infectionbloodhud fullscreen vertalign background white ^   o   �   �   &-4  �   6-
 � .   �   6-<
 � .   �   6--
 .   �   6-
 *.   �   6- �
 C. �   6-4    W  6 q
 gU$ %- 4 x  6?��  &
�W
 �W! �(-4    �  6-4    �  6-4    �  6-4    �  6- �4    �  6-4      6
U%-
 60  -  6?��  dih
mF; - .    n  6 ������[! �(-dd(N[
 �. �  '(-
 �0 �  6-dd[
�. �  '(-
 �0 �  6-
 0     6
)h
1G=	 
 )h
9G; 
 CU%-
 L
 s
 Ci
~NNN0  �  6;f 
 �U$ %- 0    �  = 	  7 �F=  7 �
 CiK; -  7 �
 CiO 7!�(- 4 �  6-
 � 0   �  6?��  �����; p 
 �U$$$$$%-0 	  ; O -d.    ' ( 
� iJ=  
 � i  )J;'  �F;  -4   6  6?  =
 *iO!=(?��  R
 IW
 �W-. _  ' (
w 7!p(
� 7!~(
� 7!�( 7!�( 7  �2N 7! �( 7! �( 7! �(^ 7! �( 7! �( 7! �(� 7!�(;< -  = 0   �  6  �F;  7!�(?	  7! �(	  ��L=+?��  ����-. _  ' ( 7!�(^ 7! �( 7!(-
  0     6- 0 7  6;f   � 7! �(  � 7! �(  �PN 7!�(  �F;  7!�(?  �F; 	  7! �(	  ���=+?��  C
 IW
 �W-.    R  ' ( 7!�(^ 7! �( 7!(-
  0     6- 0 7  6;f   ] 7! �(  ] 7! �(  ]PN 7!�(  �F;  7!�(?  �F; 	  7! �(	  ���=+?��  &
zW-
�
 �
 �0  �  6!�( &X
 zV-	  ���=0    �  6!�(! �(+-0    �  6+! �( &! �(
i! =(-4  d  6-	 ���=0    �  6	  ��L>+-0 �  6 &
�h
�F>	 
 �h
�F;� 
 )h
9F; -9 6$ �
. v  6?� 
 )h
�F; -5 �. v  6?� 
 )h
�F; -`� . v  6?i 
 )h
�F;] 
 h
F; -:� �. v  6?= 
 h
!F; -;� $. v  6? 
 h
)F; -	j �. v  6?� 
 )h
9F; -9 6$ �
.   v  6?} 
 )h
�F; -5 �. v  6?] 
 )h
�F; -0� . v  6?= 
 )h
1F; -�.    v  6? 
 )h
.F; -x m. v  6 &;B  �F;1  =J;  ! �(- ] C0  :  6  =O! =(+? ��  J
 IW
 �W-. _  ' ( 7!�( 7!�(
\ 7!�(
\ 7!g( 7! q(- � �
 | 0     6^ 7! �(	���= 7!�(;,  �F; 	 ���= 7!�(?	  7! �(	���=+?��  WEE��  �   qH���  W  ���  x  �K��  �  b�n�  v ĿlP�  �  fV.�\	  �  �h.
  � �w��
    ����  d  ܪ��  �  �psF  6  G�^  �   �c��  �  �໵0  �  � >   �  � >  �  �  �  �  �  W>   �  x>   
  �>   +  �>   7  �>   C  �>   O  �>  _  >   k  ->  �  n>  �  �>  �    �>  �  �>    a  >  $  �>   {  �>   �  �>  �  	�  �  >  	  6>   <	  _>  n	  :
  B  �>  �	  >  h
  ,  �  7>  v
  :  R>   �
  �>  �  �>  �    ?  V  d>   -  v>  �  �  �  �    :  \  ~  �  �  �  :>          �  �  $	  �  �  	   �  "  * �  N	  C �  V  �  �  q�  g    �   h	  �
  <  �   �&  �  2	  
  �
  �
  z  �  �  �    �    �  �\  �  �
  �
  �
   v  6 ~  d�  i�  m �  ��  �	  0
  �
  R  P  ��  �	  �	  2
  �
  b  X  ��  4
  �
  t  ��  ��  ��  � �  � �  �   �       ) .  :  x  �  �  �  F  j  �  �  �  1 2  �  9 >  |  J  C F  L N  s R  ~ Z  � p  ��  �  �  � �  ��  ��  ��  ��  ��  �  � �  )*	  =J	  T	  �	  (  �    $  R^	  I b	  �
  6  w x	  p~	  � �	  ~�	  � �	  ��	  b  ��	  ��	  
  
  H
  �
  �
    �  �  �  �  �  ��	  R
    �  ��	  ��	  � �	  ��	  �6
  Z
     d
  (  C�
  ]J  Z  j  
  z �  �  � �  � �  � �  ��    � `  l  � d  � p  � �  n  � �  � �  �   �    &   �  ! 
  ) *  . �  C  J2  \ \  f  gl  qv  | �  