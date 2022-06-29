if(other.atk-def > 0 and alarm[1] < 0)
{
	hp -= other.atk-def;
	alarm[1] = 60;
}
hsp -= (other.x-x)/2
vsp -= (other.y-y)/2