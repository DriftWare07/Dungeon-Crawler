this = 
{
	dmg:2,
	item: oMachineGun,
	ammo:10,
	sprite: sHeavy,
	reload: 12,
	shoot: function(mdir)
	{
		instance_create_layer(oPlayer.x, oPlayer.y, "INSTANCES", oBasicBullet).direction = mdir-15;
		instance_create_layer(oPlayer.x, oPlayer.y, "INSTANCES", oBasicBullet).direction = mdir+15;
		instance_create_layer(oPlayer.x, oPlayer.y, "INSTANCES", oBasicBullet).direction = mdir;
	}
}
