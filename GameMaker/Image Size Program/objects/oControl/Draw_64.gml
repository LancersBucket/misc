draw_set_halign(fa_center)
draw_set_halign(fa_left)
if (type) {
	draw_set_font(Font1Big);
	draw_set_halign(fa_center);
	draw_set_color(c_ltgray);
	draw_rectangle((camera_get_view_width(view_camera[0])/2)-(string_width(keyboard_string)/2)-5,camera_get_view_height(view_camera[0])-40,(camera_get_view_width(view_camera[0])/2)+(string_width(keyboard_string)/2)+5,camera_get_view_height(view_camera[0])+string_height(keyboard_string),false)
	draw_set_color(c_black);
	draw_text(view_get_wport(view_camera[0])/2,view_get_hport(view_camera[0])-40,keyboard_string)
	draw_set_font(Font1);
	draw_set_halign(fa_left);
}

if (controlls) {
	draw_set_color(c_black);
	draw_text(0,0,"Controls:\nWASD: Move camera\nClick and drag to create a mark\nFirst mark is the base line (Marked in blue)\nEvery other mark references blue mark for it's size\nBackspace while making a mark: Deletes the mark\nR: Delete all markings\nH: Type in value of units (enter to confirm)\nTab: Invert text colors\nShift: Speed up camera\nCtrl: Slow down camera\nL: Hide Controls")
}
if (!keyboard_check(vk_tab)) {	draw_set_color(c_black);
}
else {
	draw_set_color(c_white);
}

