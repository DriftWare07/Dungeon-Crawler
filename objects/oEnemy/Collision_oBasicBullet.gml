hp -= oPlayer.current_gun.dmg - def;
if(oPlayer.current_gun.dmg - def > 0)
{
	image_xscale = 0.5;
	image_yscale = 0.7;
}
with(other)
{
	instance_destroy();
}