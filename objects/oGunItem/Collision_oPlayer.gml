/// @description Insert description here
// You can write your code in this editor
if(oPlayer.select)
{
if(variable_struct_exists(other.current_gun, "item"))
{
instance_create_layer(x,y, "INSTANCES", other.current_gun.item)
}
other.current_gun = this;
instance_destroy()
}

