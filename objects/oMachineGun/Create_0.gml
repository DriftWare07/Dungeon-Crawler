/// @description Insert description here
// You can write your code in this editor
this = {
dmg:2,
item: oMachineGun,
ammo:10,
sprite: sHeavy,
reload: 7,
shoot: function(mdir)
{

instance_create_layer(oPlayer.x, oPlayer.y, "INSTANCES", oBasicBullet).direction = mdir-15;
instance_create_layer(oPlayer.x, oPlayer.y, "INSTANCES", oBasicBullet).direction = mdir+15;
instance_create_layer(oPlayer.x, oPlayer.y, "INSTANCES", oBasicBullet).direction = mdir;

}
}
