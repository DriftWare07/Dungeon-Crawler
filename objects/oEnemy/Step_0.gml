/// @description Insert description here
// You can write your code in this editor
//Horizontal Collision
if (place_meeting(x+hsp,y, oSolid))
{
while (!place_meeting(x+sign(hsp),y,oSolid))
{
x = x +sign(hsp);
}
hsp = 0;
}
x = x + hsp;
//Vertical Collision
if (place_meeting(x,y+vsp,oSolid))
{
while (!place_meeting(x,y+sign(vsp),oSolid))
{
y = y +sign(vsp);
}
vsp = 0;
}
y = y + vsp;
if(hp < 1){
instance_destroy()
instance_create_layer(x,y,"COLLIDERS", oDeathFX);
}

var xscale 
if(instance_exists(oPlayer))
{
xscale = sign(x-oPlayer.x)*-1
}

if(distance_to_object(oPlayer) < 128)
{
axis_hor = sign(x-oPlayer.x)*-1
axis_ver = sign(y-oPlayer.y)*-1
}
else
{
axis_hor = 0;
axis_ver = 0;
}


hsp = median(hsp + sign(axis_hor * spd - hsp) * accel, hsp, axis_hor * spd);
vsp = median(vsp + sign(axis_ver * spd - vsp) * accel, vsp, axis_ver * spd);

hsp = clamp(hsp, -spd, spd)
vsp = clamp(vsp, -spd, spd)

image_xscale += ((1-image_xscale)/2)+xscale
image_yscale += (1-image_yscale)/2

image_xscale = clamp(image_xscale, -1, 1)

