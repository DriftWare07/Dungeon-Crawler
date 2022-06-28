<<<<<<< Updated upstream
this = 
=======
this= 
>>>>>>> Stashed changes
{
	dmg:2,
	item: oMachineGun,
	ammo:30,
	sprite: sHeavy,
	reload: 2,
	shoot: function(mdir)
	{
		instance_create_layer(oPlayer.x, oPlayer.y, "INSTANCES", oBasicBullet).direction = mdir-15;
		instance_create_layer(oPlayer.x, oPlayer.y, "INSTANCES", oBasicBullet).direction = mdir+15;
		instance_create_layer(oPlayer.x, oPlayer.y, "INSTANCES", oBasicBullet).direction = mdir;
	}
<<<<<<< Updated upstream
}
=======
}
>>>>>>> Stashed changes
