/// @description Insert description here
// You can write your code in this editor
if(instance_exists(oPersistentData))
{
oPersistentData.loot ++;
}
instance_destroy();
instance_create_layer(x,y, "COLLIDERS", oCoinFX)
