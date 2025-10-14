x = x-oPlayer.hsp;

if (place_meeting(x,y,oPlayer)) {
	//oPlayer.hsp += speedx;
	if (oPlayer.vsp > 0) {
		oPlayer.vsp -= speedy;
	}
	else {
		oPlayer.vsp = -speedy
	}
	instance_destroy();
}

if (x < 0) {
	instance_destroy();
}