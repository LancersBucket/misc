//if player is dead and !lock
if (dead) && (!lock) {
	//set alarm 0 with a timer of one frame
	alarm[0] = 1;
	//lock to prevent constant timer reset
	lock = true;
}

if (keyboard_check_pressed(ord("R"))) {
	game_restart();
}

frame++;