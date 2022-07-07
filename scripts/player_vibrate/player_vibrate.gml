// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_vibrate(trig, strong, duration){

gamepad_set_vibration(0, trig, strong)
self.alarm[3] = duration;

}