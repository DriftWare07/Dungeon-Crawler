<<<<<<< Updated upstream
this= 
=======
this = 
>>>>>>> Stashed changes
{
	dmg:1,
	item: oGunItem,
	ammo: 10,
	sprite: sBasic,
	reload: 30,
<<<<<<< Updated upstream
	shoot: function(dir){
	with(instance_create_layer(oPlayer.x,oPlayer.y, "INSTANCES", oBasicBullet))
=======
	shoot: function(dir)
	{
		with(instance_create_layer(oPlayer.x,oPlayer.y, "INSTANCES", oBasicBullet))
>>>>>>> Stashed changes
		{
			direction = dir;
			image_angle = direction;
			speed = 10;
		}
	}
}
