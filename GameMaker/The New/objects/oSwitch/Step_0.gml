if (!onetimecodelock) {
	for (i = 0; i < instance_number(oDoor); i++) {
		if (doors[i].did = sid) {
			door_link = doors[i];
			onetimecodelock = true;
		}
	}
}

//frame is equal to togglestate (1 or 0)
image_index = togglestate;

//if meeting with player and E is pressed, switch state
if (place_meeting(x,y,oPlayer)) && (keyboard_check_pressed(ord("E"))) {
	togglestate = !togglestate;
}

if (door_link != noone) {
	door_link.doorstate = togglestate;
}
else {
	sprite_index = sError;
}