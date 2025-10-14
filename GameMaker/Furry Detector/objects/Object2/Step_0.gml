if (mouse_check_button_pressed(mb_left))
{
	if (abs(mouse_x - x) < 200) and (abs(mouse_y - y) < 64)
	{
		room = Room2;
	}
}