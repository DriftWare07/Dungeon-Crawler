var alarminseconds
alarminseconds = (alarm[1]*room_speed)/1000
draw_set_font(ibm)
draw_set_halign(fa_center)
draw_healthbar(10,10, 100, 30, hppercent, c_black, c_red, c_blue, 0, true, true)
draw_text(55, 8, string(hp)+"/"+string(maxhp))
if(variable_struct_exists(current_gun, "reload"))
{
	draw_healthbar(10,40, 100, 50, (alarm[0]/current_gun.reload)*100, c_orange, c_black, c_black, 0, true, true)
}
if(variable_struct_exists(current_gun, "ammo"))
{
	draw_healthbar(10,70, 100, 55, (current_ammo/current_gun.ammo)*100, c_black, c_blue, c_green, 0, true, true)
	if(current_ammo < 1)
	{
	
	draw_text(55, 51, string(alarminseconds)+" s")
	
	}
	else
	{
		draw_text(55, 51, string(current_ammo)+"/"+string(current_gun.ammo))
	}
}