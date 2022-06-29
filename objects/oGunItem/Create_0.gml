this = 
{
	dmg:1,
	item: oGunItem,
	ammo: 10,
	sprite: sBasic,
	reload: 30,
	shoot: function(dir)
	{
		with(instance_create_layer(oPlayer.x,oPlayer.y, "INSTANCES", oBasicBullet))
		{
			direction = dir;
			image_angle = direction;
			speed = 10;
		}
	}
}
