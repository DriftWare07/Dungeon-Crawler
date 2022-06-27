// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function knockback(obj,knockbackspeedx, knockbackspeedy, reverse = false){
		var badguy = instance_place(x, y, obj);
		
if (badguy != noone) {
	if(!reverse){
  hsp -= sign(badguy.x - x) * knockbackspeedx;
  vsp -=  sign(badguy.y - y) * knockbackspeedy;
	}else
	{
	hsp += sign(badguy.x - x) * knockbackspeedx;
    vsp +=  sign(badguy.y - y) * knockbackspeedy;
	
	}
}
}
