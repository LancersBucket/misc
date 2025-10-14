if (mouse_check_button_pressed(mb_left)) {
	image_angle = 180;
}
else if (mouse_check_button_released(mb_left)) {
	image_angle = 0;
	hit = false;
}
if (oPlayer.player_face) {
	image_xscale = 1;
}
if (!oPlayer.player_face) {
	image_xscale = -1;
}

if (instance_place(x,y,oDummy)) {
	if (image_angle = 180) {
		if (hit = false) {
			var temp = instance_place(x,y,oDummy);
			temp.hp -= 10;
			hit = true;
		}
	}
}

depth = -oPlayer.y -2;