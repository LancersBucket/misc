if place_meeting(x,y,oPlayer) {
	meeting = true
	if (keyboard_check_pressed(ord("E"))) {
		instance_destroy()
	}
}
else {
	meeting = false
}