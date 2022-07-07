/// @description Insert description here
// You can write your code in this editor
#region //controls binding
if(keyboard_check(vk_anykey)) gp = false


kright = keyboard_check(ord("D"))
kleft = keyboard_check(ord("A"))
kdown = keyboard_check(ord("S")) 
kup = keyboard_check(ord("W"))

lb = mouse_check_button(mb_right)
rb = mouse_check_button(mb_left)
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
rb = gamepad_button_check(0, gp_shoulderrb)
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

if(!place_meeting(x,y, oEnemy)){
if(gp){
hsp = median(hsp + sign(movex * spd - hsp) * accel, hsp, movex * spd);
vsp = median(vsp + sign(movey * spd - vsp) * accel, vsp, movey * spd);
}
else{
	if(movex != 0 and movey != 0)
	{
hsp = median(hsp + sign(movex * sqrt(spd) - hsp) * accel, hsp, movex * sqrt(spd));
vsp = median(vsp + sign(movey * sqrt(spd) - vsp) * accel, vsp, movey * sqrt(spd));
	}
	else{
	hsp = median(hsp + sign(movex * spd - hsp) * accel, hsp, movex * spd);
    vsp = median(vsp + sign(movey * spd - vsp) * accel, vsp, movey * spd);
	}
}
}



if(hsp != 0 or vsp != 0)
{

if(alarm[3] < 0)
{
alarm[3] = 5;
}

}





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
else if(sign(mouse_x-x) != 0)image_xscale = sign(mouse_x-x)

#endregion
#region //shooty shooty bang bang

if((rb and variable_struct_exists(current_gun, "shoot")) and (shootable and current_ammo > 0) ){
	current_gun.shoot(mdir);
	shootable = false;
	current_ammo --;
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


if(variable_struct_exists(current_gun, "ammo") and (current_ammo < 1 and alarm[1] < 0)){
{
	alarm[1] = current_gun.reload*current_gun.ammo;
}
}

#endregion
if(alarm[2] > 0){

image_alpha = 0.4;

}
else image_alpha = 1;
if(hp < 1) {

room_goto(GameOver)

}
hppercent = (hp/maxhp)*100

