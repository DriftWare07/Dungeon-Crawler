draw_set_font(pixx)
draw_set_halign(fa_center)
draw_self();
if(place_meeting(x,y, oPlayer))
{
	if(oPlayer.gp) draw_text(x, ystart+10, "Press A")
	else draw_text(x, y+20, "Press E")
<<<<<<< Updated upstream
}
=======
}
>>>>>>> Stashed changes
