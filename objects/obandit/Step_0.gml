/// @description Insert description here
// You can write your code in this editor

event_inherited()

if(not chasing)
{
spd = 0;
visible = false;
}
else{

spd = 1;
visible = true

}

if(point_distance(x,y, oPlayer.x, oPlayer.y) < 50)
{
chasing = true;
}