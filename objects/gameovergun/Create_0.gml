if(instance_exists(oPlayer))
{
	if(variable_struct_exists(oPlayer.current_gun, "sprite"))
	{
	sprite_index = oPlayer.current_gun.sprite;
	}
}
else sprite_index = sBasic;
