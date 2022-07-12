var gph = gamepad_axis_value(0, gp_axisrh);
var scale;
if(gp) scale = sign(gph)
else scale = sign(mouse_x-x)


if(variable_struct_exists(current_gun, "sprite"))
{
	if(scale == 1)
	{
		draw_self();
		draw_sprite_ext(current_gun.sprite, 0,x,y,scalex,scale, mdir, c_white, 1)
	}
	else
	{
		draw_sprite_ext(current_gun.sprite, 0,x,y,scalex,scale, mdir, c_white, 1)
		draw_self()
	}
}
else
{
	draw_self()
}