/// @description Insert description here
// You can write your code in this editor

with(oPersistentData)
{
if(instance_exists(oPlayer)){
health = oPlayer.hp;
maxhealth = oPlayer.maxhp;
attack = oPlayer.atk;
defense = oPlayer.def;
knockback = oPlayer.knock;
sped = oPlayer.spd;
gun = oPlayer.current_gun;
}

}

room_goto(next)