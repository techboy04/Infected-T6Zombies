#include maps\mp\_utility;
#include common_scripts\utility;
#include maps\mp\gametypes_zm\_hud_util;
#include maps\mp\gametypes_zm\_hud_message;

init()
{
    level thread setCureLocation();
    create_dvar("infected_start_round", 15);
    create_dvar("infected_infect_chance", 60);
    create_dvar("infected_infect_timer", 45);
    create_dvar("infected_infect_decrease", 5);
    create_dvar("infected_cure_price", 1500);
    level thread onPlayerConnect();
}

onPlayerConnect()
{
    for(;;)
    {
        level waittill("connected", player);
        player thread onPlayerSpawned();
    }
}

onPlayerSpawned()
{
    self endon("disconnect");
	level endon("game_ended");
	
	self.isinfected = 0;
	self thread InfectedHud();
	self thread BloodInfectHUD();
	self thread playerdamagecheck();
	self thread InfectionCountdown();
	self thread createcureicon(level.curestationloc);
	self thread createplayerinfecticon();
	
    for(;;)
    {
        self waittill("spawned_player");

		self iprintln("^4Infected mod ^7created by ^1techboy04gaming");
    }
}

create_dvar( dvar, set )
{
    if( getDvar( dvar ) == "" )
		setDvar( dvar, set );
}

spawnCurePlatform(x,y,z)
{
	level.curestationloc = (x,y,z);
	
	cureModel = spawn( "script_model", ( x,y,z+40), 1, 100, 100 ); //defaultvehicle
	cureModel setModel ("zombie_skull");
	
	
	cureTrigger = spawn( "trigger_radius", ( x,y,z ), 1, 100, 100 ); //defaultvehicle
	cureTrigger setHintString("^7The power must be activated first!");
	cureTrigger setcursorhint( "HINT_NOICON" );
	if(getDvar("mapname") != "zm_tomb" && getDvar("mapname") != "zm_prison")
	{
		level waittill ("power_on");
	}
	cureTrigger setHintString("^7Press ^3&&1 ^7to cure from infection" + "^7 [Cost: " + getdvar("fasttravel_price") + "]");
	while(1)
	{
		cureTrigger waittill( "trigger", i );
		if ( i usebuttonpressed() && i.isinfected == 1 && i.score >= getDvarInt("infected_cure_price"))
		{
			i.score -= getDvarInt("infected_cure_price");
			i thread cure_player();
			i playsound( "zmb_weap_wall" );
		}
	}
}

playerdamagecheck()
{
	while (true)
	{
		self waittill( "damage", amount, attacker, dir, point, mod );
		
		if (attacker maps\mp\animscripts\zm_utility::is_zombie())
		{
			
			chance = randomintrange(1, 100);
			
			if((chance <= getDvarInt("infected_infect_chance")) && (getDvarInt("infected_start_round") >= level.round_number))
			{
				if(self.isinfected == 0)
				{
					self thread infect();
				}
				else
				{
					self.infecttimer -= getDvarInt("infected_infect_decrease");
				}
			}
		}
	}
}

InfectedHud()
{
	level endon("end_game");
	self endon( "disconnect" );

	infected_hud = newClientHudElem(self);
	infected_hud.alignx = "center";
	infected_hud.aligny = "top";
	infected_hud.horzalign = "user_center";
//	infected_hud.vertalign = "user_top";
	infected_hud.x = 0;
	infected_hud.y += 50;
	infected_hud.fontscale = 2;
	infected_hud.alpha = 1;
	infected_hud.color = ( 0, 1, 0 );
	infected_hud.hidewheninmenu = 1;
	infected_hud.foreground = 1;
	infected_hud.label = &"Infected! Find a cure skull! - ";

	while(1)
	{
		infected_hud setValue (self.infecttimer);
		
		if(self.isinfected == 1)
		{
			infected_hud.alpha = 1;
		}
		else
		{
			infected_hud.alpha = 0;
		}
		
		wait 0.05;
	}
}

createcureIcon(x,y,z)
{
	cure_icon = newClientHudElem(self);
	cure_icon.alpha = 0;
	cure_icon.color = (0,1,0);
    cure_icon.archived = 0;
    cure_icon setshader( "specialty_instakill_zombies", 8, 8 );
    cure_icon setwaypoint( 1 );
    
    while(1)
    {
    	
		cure_icon.x = level.curestationloc[0];
		cure_icon.y = level.curestationloc[1];
		cure_icon.z = level.curestationloc[2] + 80;
    	
    	if (self.isinfected == 1)
    	{
    		cure_icon.alpha = 1;
    	}
    	else if (self.isinfected == 0)
    	{
    		cure_icon.alpha = 0;
    	}
    	wait 0.1;
    }
}

createplayerinfecticon()
{
	level endon("end_game");
	self endon( "disconnect" );
	
	infection_icon = newHudElem();
	infection_icon.alpha = 0;
	infection_icon.color = (0,1,0);
    infection_icon.archived = 0;
    infection_icon setshader( "specialty_instakill_zombies", 8, 8 );
    infection_icon setwaypoint( 1 );
    
    while(1)
    {
    	
		infection_icon.x = self.origin[0];
		infection_icon.y = self.origin[1];
		infection_icon.z = self.origin[2] + 80;
    	
    	if (self.isinfected == 1)
    	{
    		infection_icon.alpha = 1;
    	}
    	else if (self.isinfected == 0)
    	{
    		infection_icon.alpha = 0;
    	}
    	wait 0.1;
    }
}


ifDownedWhileInfected()
{
	self endon ("player_cured");
	self waittill_any_return("fake_death", "death", "player_downed");
	self.isinfected = 0;
}

cure_player()
{
	self notify ("player_cured");
	self setblur( 3, 0.1 );
	self.isinfected = 0;
	self.ignoreme = true;
	wait 1;
	self setblur( 0, 1 );
	wait 5;
	self.ignoreme = false;
}

infect()
{
	self.isinfected = 1;
	self.infecttimer = getDvarInt("infected_infect_timer");
	self thread ifDownedWhileInfected();
	
	self setblur( 3, 0.1 );
	wait 0.2;
	self setblur( 0, 1 );
}

setCureLocation()
{
	if ( getDvar( "g_gametype" ) == "zgrief" || getDvar( "g_gametype" ) == "zstandard" )
	{
		if(getDvar("mapname") == "zm_prison") //mob of the dead grief
		{
			spawnCurePlatform(2737,9270,1337);
		}
		else if(getDvar("mapname") == "zm_buried") //buried grief
		{
			spawnCurePlatform(1010,309,-8);
		}
		else if(getDvar("mapname") == "zm_nuked") //nuketown
		{
			spawnCurePlatform(530,912,-96);
		}
		else if(getDvar("mapname") == "zm_transit") //transit grief and survival
		{
			if(getDvar("ui_zm_mapstartlocation") == "town") //town
			{
				spawnCurePlatform(1949,900,-58);
			}
			else if (getDvar("ui_zm_mapstartlocation") == "transit") //busdepot
			{
				spawnCurePlatform(-5924,4746,-59);
			}
			else if (getDvar("ui_zm_mapstartlocation") == "farm") //farm
			{
				spawnCurePlatform(7876,-5738,9);
			}
		}
	}
	else
	{
		if(getDvar("mapname") == "zm_prison") //mob of the dead
		{
			spawnCurePlatform(2737,9270,1337);
		}
		else if(getDvar("mapname") == "zm_buried") //buried
		{
			spawnCurePlatform(1010,309,-8);
		}
		else if(getDvar("mapname") == "zm_transit") //transit
		{
			spawnCurePlatform(1054,-217,-304);
			
		}
		else if(getDvar("mapname") == "zm_tomb") //origins
		{
			spawnCurePlatform(0,8,-750);
		}
		else if(getDvar("mapname") == "zm_highrise")
		{
			spawnCurePlatform(2925,120,1297);
		}
	}
}

InfectionCountdown()
{
	while(1)
	{
		if(self.isinfected == 1)
		{
			if(self.infecttimer <= 0)
			{
				self.isinfected = 0;
				self dodamage(self.health, self.origin);
			}
			self.infecttimer -= 1;
		}
		
		wait 1;
	}
}

BloodInfectHUD()
{
	level endon("end_game");
	self endon( "disconnect" );

	infectionbloodHUD = newClientHudElem(self);
	infectionbloodHUD.x = 0;
	infectionbloodHUD.y = 0;
	infectionbloodHUD.horzalign = "fullscreen";
	infectionbloodHUD.vertalign = "fullscreen";
	infectionbloodHUD.background = 1;
	infectionbloodHUD setshader( "white", 640, 480 );
	infectionbloodHUD.color = (0,1,0);
	infectionbloodHUD.alpha = 0.1;
	
	while(1)
	{
		if (self.isinfected == 1)
		{
			infectionbloodHUD.alpha = 0.1;
		}
		else
		{
			infectionbloodHUD.alpha = 0;
		}
		
		wait 0.1;
	}
}
