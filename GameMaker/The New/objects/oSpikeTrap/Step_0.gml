if (trapactive) {
	if (y > oSpikeBase.y) {
		y = y - 0.5;
	}
	else {
		trapactive = false;
	}
	alarm[0] = 3*room_speed;
}

if (trapreset) {
	if (y < oSpikeBase.y+32) {
		y++;
	}
	else {
		trapreset = false;
	}
}