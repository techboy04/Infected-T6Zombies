�GSC
     �  ~  �  �  �  �  �  �      @ Y           maps/mp/_imcsx_gsc_studio.gsc maps/mp/_utility common_scripts/utility maps/mp/gametypes_zm/_hud_util maps/mp/gametypes_zm/_hud_message init setcurelocation create_dvar infected_start_round infected_infect_chance infected_infect_timer infected_infect_decrease infected_cure_price onplayerconnect connected player onplayerspawned disconnect game_ended isinfected infectedhud bloodinfecthud playerdamagecheck infectioncountdown createcureicon curestationloc createplayerinfecticon spawned_player iprintln ^4Infected mod ^7created by ^1techboy04gaming dvar set  setdvar spawncureplatform x y z curemodel spawn script_model setmodel zombie_skull curetrigger trigger_radius sethintstring ^7The power must be activated first! setcursorhint HINT_NOICON mapname zm_tomb zm_prison power_on ^7Press ^3&&1 ^7to cure from infection ^7 [Cost:  fasttravel_price ] trigger i usebuttonpressed score cure_player playsound zmb_weap_wall damage amount attacker dir point mod maps/mp/animscripts/zm_utility is_zombie chance randomintrange round_number infect infecttimer end_game infected_hud newclienthudelem alignx center aligny top horzalign user_center fontscale alpha color hidewheninmenu foreground label Infected! Find a cure skull! -  setvalue cure_icon archived setshader specialty_instakill_zombies setwaypoint infection_icon newhudelem origin ifdownedwhileinfected player_cured waittill_any_return fake_death death player_downed setblur ignoreme g_gametype zgrief zstandard zm_buried zm_nuked zm_transit ui_zm_mapstartlocation town transit farm zm_highrise dodamage health infectionbloodhud fullscreen vertalign background white ^   o   �   �   &-4 �   6-
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
 ~h
�NNN0  �  6;f 
 �U$ %- 0    �  = 	  7 �F=  7 �
 CiK; -  7 �
 CiO 7!�(- 4 �  6-
 � 0   �  6?��  �����$; p 
 �U$$$$$%-0   ; O -d.  +  ' ( 
� iJ=  
 � i  :K;'  �F;  -4   G  6?  N
 *iO!N(?��  c
 ZW
 �W-. p  ' (
� 7!�(
� 7!�(
� 7!�( 7!�( 7  �2N 7! �( 7! �( 7! �(^ 7! �( 7! �( 7! �(� 7!�(;< -  N 0     6  �F;  7!�(?	  7! �(	  ��L=+?��  ���-. p  ' ( 7!�(^ 7! �( 7!(-
 , 0   "  6- 0 H  6;f   � 7! �(  � 7! �(  �PN 7!�(  �F;  7!�(?  �F; 	  7! �(	  ���=+?��  T
 ZW
 �W-.    c  ' ( 7!�(^ 7! �( 7!(-
 , 0   "  6- 0 H  6;f   n 7! �(  n 7! �(  nPN 7!�(  �F;  7!�(?  �F; 	  7! �(	  ���=+?��  &
�W-
�
 �
 �0  �  6!�( &X
 �V-	  ���=0    �  6!�(! �(+-0    �  6+! �( &! �(
i! N(-4  u  6-	 ���=0    �  6	  ��L>+-0 �  6 &
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
F; -`� . v  6?i 
 )h
F;] 
 h
-F; -:� �. v  6?= 
 h
2F; -;� $. v  6? 
 h
:F; -	j �. v  6?� 
 )h
9F; -9 6$ �
.   v  6?} 
 )h
�F; -5 �. v  6?] 
 )h
F; -0� . v  6?= 
 )h
1F; -�.    v  6? 
 )h
?F; -x m. v  6 &;B  �F;1  NJ;  ! �(- n T0  K  6  NO! N(+? ��  [
 ZW
 �W-. p  ' ( 7!�( 7!�(
m 7!�(
m 7!x( 7! �(- � �
 � 0   "  6^ 7! �(	���= 7!�(;,  �F; 	 ���= 7!�(?	  7! �(	���=+?��  >�7�  �   qH��
  W  ���&  x  �K��  �  �1uW�  v J���  �  �VI�l	  �  [L1>
  � �s0�
    ,�[ݾ  u  H����  �  ���+(  G  �SC�n  �   �fF�  �  P��@  �  � >   �  � >  �  �  �  �  �  W>   �  x>     �>   ;  �>   G  �>   S  �>   _  �>  o  >   {  ->  �  n>  �  �>  �    �>  �  �>  &  q  >  4  �>   �  �>   �  �>  �  �  	  +>  	  G>   L	  p>  ~	  J
  R  >  
  ">  x
  <  �  H>  �
  J  c>     �>  �  �>  �    O  f  u>   =  v>  �  �  �  
  *  J  l  �  �  �  �  K>  !        �  �  4	  �  �  *	   �  2  * �  ^	  C �  �  �  q  g   � (  x	    L  � .  �6  �  B	  
  �
  �
  �  �  �     .  �    �  �l  �  �
  �
  �
   �  6 �  d�  i�  m �  ��  �	  @
  �
  b  `  ��  �	  �	  B
  �
  r  h  ��  D
  �
  �  ��  ��  ��  � �  � �  �   � "   0  ) >  J  �  �  �  �  V  z  �  �  �  1 B  �  9 N  �  Z  C V  L ^  s b  ~ f  � j  � �  ��  �  �  � �  ��  ��  ��  ��  ��  $�  � �  ::	  NZ	  d	  
  8    ,  4  cn	  Z r	     F  � �	  ��	  � �	  ��	  � �	  ��	  r  ��	  ��	  "
  .
  X
  �
  �
    �  �  �  �  �  ��	  b
  &  �  ��	  ��	  � �	  ��	  F
  j
  .  , t
  8  T�
  nZ  j  z    � �  �  � �  � �  � �  �  $  � p  |  � t  � �  � �  ~   �   �  �   �    6  - �  2   : :  ? �  T  [B  m l  v  x|  ��  � �  