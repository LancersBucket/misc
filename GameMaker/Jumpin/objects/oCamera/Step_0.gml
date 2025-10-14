if (instance_exists(follow))
{
	xto = follow.x+550-min(oPlayer.hsp*10,400);
	yto = follow.y;
}

x += (xto - x) / 20;
y += (yto - y) / 20;

//x = clamp(x,view_w_half,room_width - view_w_half);
y = clamp(y,view_h_half,room_height - view_h_half);

view_w_half = camera_get_view_width(cam) / 2;
view_h_half = camera_get_view_height(cam) / 2;

camera_set_view_pos(cam,x - view_w_half,y - view_h_half);

if (keyboard_check(vk_add)) {
	zoomx--;
	zoomy--;
	camera_set_view_size(view_camera[0],zoomx,zoomy);
}
if (keyboard_check(vk_subtract)) {
	zoomx++;
	zoomy++;
	camera_set_view_size(view_camera[0],zoomx,zoomy)
}

//surface_resize(application_surface, zoomx, zoomy);