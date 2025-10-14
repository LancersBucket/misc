if (mouse_wheel_up()) {
	if (global.gun < total_guns) {
		global.gun++;
	}
	else {
		global.gun = 0;
	}
}
if (mouse_wheel_down()) {
	if (global.gun-1 > -1) {
		global.gun--;
	}
	else {
		global.gun = total_guns;
	}
}