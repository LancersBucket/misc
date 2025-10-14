if (mode != Transition_Mode.OFF)
{
	draw_set_color(c_black);
	draw_set_alpha(percent);
	draw_rectangle(0,0,w,h,false);
}
draw_set_alpha(1);