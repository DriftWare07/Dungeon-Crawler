data = oPersistentData;
if(instance_exists(oPersistentData))
{
	hp = health;
	maxhp = data.maxhealth;
	atk = data.attack;
	def = data.defense;
	knock = data.knockback;
	spd = data.sped;
	current_gun = data.gun;
}