<<<<<<< Updated upstream
<<<<<<< Updated upstream
/// @description Insert description here
// You can write your code in this editor
if(instance_exists(oPlayer))
{
sprite_index = oPlayer.current_gun.sprite;
=======
if(instance_exists(oPersistentData))
{
	sprite_index = oPersistentData.gun.sprite;
>>>>>>> Stashed changes
=======
if(instance_exists(oPlayer))
{
	sprite_index = oPlayer.current_gun.sprite;
>>>>>>> Stashed changes
}
else sprite_index = sBasic;