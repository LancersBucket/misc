if (localflag) {	
	image_yscale = point_distance(ox,oy,mouse_x,mouse_y) / sprite_get_height(sprite_index)
	image_angle = point_direction(ox,oy,mouse_x,mouse_y)+90
	if (keyboard_check_pressed(vk_backspace)) {
		oControl.flag = false;
		instance_destroy();
	}
}

if (mouse_check_button_released(mb_left)) {
	localflag = false;
	oControl.flag = localflag;
}

//px = sprite_get_height(* image_yscale;
totalh = (sprite_height/oBarPrimary.sprite_height) * oBarPrimary.totalh;
