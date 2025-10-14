draw_set_color(c_white)
if (dead) {
	draw_text(10,10,"You have died\nRespawn in: " + string(alarm[0]/room_speed))
}
else {
	//set color to white
	draw_set_color(c_white)
	//Print this shit at (10,10)
	draw_text(10,10, 
	string(oPlayer.x) + ", " + string(oPlayer.y) + 
	"\nhsp: " + string(oPlayer.hsp) + 
	"\nmomentum: " + string(oPlayer.momentum) + 
	"\nvsp: " + string(oPlayer.vsp) + 
	"\nDevmode: " + string(devmode) + 
	"\nFrames: " + string(frame) + 
	"\nSeconds: " + string(frame/room_speed) + 
	"\nFPS: " + string(fps) + 
	"\nbuffer: " + string(oPlayer.bufferjump) + 
	"\ngrounded: " + string(oPlayer.grounded))
}