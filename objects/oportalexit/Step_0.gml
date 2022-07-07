/// @description Insert description here
// You can write your code in this editor


if(instance_exists(oEnemy))
{

	sprite_index = sPortalInactive
	active = false

}
else
{
	sprite_index = sPortalActive
	active = true;
}
if(next = room)
{
next = plains[random_range(0, plains.length)]
}