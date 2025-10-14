if (oPlayer.hsp >= pxspeed) {

	if (pxspeed - oPlayer.hsp == 0) {
		x = x-pxspeed;
	}
	else {
		x = x - (pxspeed + oPlayer.hsp);
	}
}
else {
	x = x + (pxspeed/1.5 - oPlayer.hsp)
}

if (place_meeting(x,y,oPlayer)) {
	oPlayer.hsp += speedx;
	if (oPlayer.vsp > 0) {
		oPlayer.vsp = -oPlayer.vsp;
	}
	else {
		oPlayer.vsp = -5;
	}
	instance_destroy();
}

if (x < 0) {
	instance_destroy();
}