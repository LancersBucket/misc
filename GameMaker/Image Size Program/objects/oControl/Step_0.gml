zoom_level = zoom_level + (mouse_wheel_down() - mouse_wheel_up()) * 0.1
zoom_level = clamp(zoom_level,.1,3)

//Get current size
var view_w = camera_get_view_width(view_camera[0]);
var view_h = camera_get_view_height(view_camera[0]);

//Get new sizes by interpolating current and target zoomed size
var new_w = zoom_level * default_zoom_width
var new_h =  zoom_level * default_zoom_height

//Apply the new size
camera_set_view_size(view_camera[0], new_w, new_h);

var vpos_x = camera_get_view_x(view_camera[0]);
var vpos_y = camera_get_view_y(view_camera[0]);

//change coordinates of camera so zoom is centered
var new_x = vpos_x+(view_w - zoom_level * default_zoom_width)/2
var new_y = vpos_y+(view_h - zoom_level * default_zoom_height)/2
camera_set_view_pos(view_camera[0], new_x, new_y);

if (!flag) {
	if (!flag2) {
		if (mouse_check_button_pressed(mb_left)) {
			instance_create_layer(mouse_x,mouse_y,"Instances",oBarPrimary);
			flag = !flag;
		}
	}
	else {
		if (mouse_check_button_pressed(mb_left)) {
			instance_create_layer(mouse_x,mouse_y,"Instances",oBar);
			flag = !flag;
		}
	}
}


if (keyboard_check_pressed(ord("H"))) {
	type = true;
	keyboard_string = "";
}
if (keyboard_check_pressed(vk_enter)) {
	type = false;
	temp = keyboard_string;
	try {
		temp = string_digits(temp);
		temp = real(temp);
		height = temp;
	}
	catch (e) {
		delete e;
		height = 0;
	}
}

t2 = camera_get_view_x(view_camera[0])
t3 = camera_get_view_y(view_camera[0])

key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
key_up = keyboard_check(vk_up) or keyboard_check(ord("W")) or (keyboard_check_pressed(vk_space));
key_down = keyboard_check(vk_down) or keyboard_check(ord("S"));

var horizontal = key_right - key_left;
var vertical = key_down - key_up;

if (keyboard_check(vk_shift)) {
	mult = 2;
}
else if (keyboard_check(vk_control)) {
	mult = .5
}
else {
	mult = 1;
}

camera_set_view_pos(view_camera[0],t2+(horizontal*5*mult),t3+(vertical*5*mult))

if (keyboard_check_pressed(ord("R"))) {
	if (instance_exists(oBarPrimary)) {
		instance_destroy(oBarPrimary)
	}
	if (instance_exists(oBar)) {
		instance_destroy(oBar)
	}
	flag = false;
	flag2 = false;
}

if (keyboard_check_pressed(ord("L"))) {
	controlls = !controlls
}
