/// @description Insert description here
// You can write your code in this editor
#region //controls binding
if(keyboard_check(vk_anykey)) gp = false


kright = keyboard_check(ord("D"))
kleft = keyboard_check(ord("A"))
kdown = keyboard_check(ord("S")) 
kup = keyboard_check(ord("W"))

lb = mouse_check_button(mb_right)
rb = mouse_check_button_pressed(mb_left)
select = keyboard_check_pressed(ord("E"))
drop = keyboard_check_pressed(ord("Q"))
if(not gp){mdir = point_direction(x,y, mouse_x, mouse_y)}
#endregion
#region //controller support

if(abs(gamepad_axis_value(0, gp_axislv)) > 0.2 or abs(gamepad_axis_value(0, gp_axislh)) > 0.2)
{
	gp = true
	kright = max(gamepad_axis_value(0, gp_axislh),0) 
	
	kleft = abs(min(gamepad_axis_value(0, gp_axislh),0)) 
	
	kdown = max(gamepad_axis_value(0, gp_axislv),0)
	
	kup = abs(min(gamepad_axis_value(0, gp_axislv),0 )) 
}


if(gp){
lb = gamepad_button_check(0, gp_shoulderlb)
rb = gamepad_button_check_pressed(0, gp_shoulderrb)
select = gamepad_button_check_pressed(0, gp_face1)
drop = gamepad_button_check_pressed(0, gp_face2)

var gph = gamepad_axis_value(0, gp_axisrh);
var gpv = gamepad_axis_value(0, gp_axisrv);

if((abs(gph) > 0.2) or (abs(gpv) > 0.2))
{
	mdir = point_direction(0,0,gph, gpv);
}

	gp = true
	
}

#endregion
#region //movement
movex = kright-kleft;
movey = kdown-kup
if(gp){
hsp = movex*spd;
vsp = movey*spd;
}
else{
	if(movex != 0 and movey != 0)
	{
hsp = movex*sqrt(spd);
vsp = movey*sqrt(spd);
	}
	else{
	hsp = movex*spd;
	vsp = movey*spd;
	}
}








//hsp = median(hsp + sign(axis_hor * spd - hsp) * accel, hsp, axis_hor * spd);
//vsp = median(vsp + sign(axis_ver * spd - vsp) * accel, vsp, axis_ver * spd);

#endregion
#region //Collision
if (place_meeting(x+hsp,y,oSolid))
{
while (!place_meeting(x+sign(hsp),y,oSolid))
{
x = x +sign(hsp);
}
hsp = 0;
}
x += hsp;
//Vertical Collision
if (place_meeting(x,y+vsp,oSolid))
{
while (!place_meeting(x,y+sign(vsp),oSolid))
{
y = y +sign(vsp);
}
vsp = 0;
}
y += vsp;
#endregion
#region //Animation


if(floor(hsp) != 0 or floor(vsp) != 0)
{sprite_index = sPlayerRun}
else{sprite_index = sPlayerIdle}

if(gp) image_xscale = sign(gph)
else image_xscale = sign(mouse_x-x)

#endregion
#region //shooty shooty bang bang

if((rb and variable_struct_exists(current_gun, "shoot")) and shootable){
	current_gun.shoot(mdir);
	shootable = false;
	alarm[0] = current_gun.reload;
	scalex = 0.6;
    
}
if(drop)
{
if(variable_struct_exists(current_gun, "item"))
{
instance_create_layer(x,y, "INSTANCES", current_gun.item)
current_gun = {}
}
}

scalex += (1-scalex)/2
scalex = clamp(scalex, -1, 1)
#endregion
if(alarm[1] > 0){

image_alpha = 0.4;

}
else image_alpha = 1;
if(hp < 1) {

room_goto(GameOver)

}

