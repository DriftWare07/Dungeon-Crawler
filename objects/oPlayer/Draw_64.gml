/// @description Insert description here
// You can write your code in this editor
draw_set_font(ibm)
draw_set_halign(fa_center)
draw_healthbar(10,10, 100, 30, hppercent, c_black, c_red, c_blue, 0, true, true)
draw_text(55, 8, string(hp)+"/"+string(maxhp))
