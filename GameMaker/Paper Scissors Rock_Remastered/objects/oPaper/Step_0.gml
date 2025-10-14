if (commmode)
{
	sprite_index = sPassport;
}
else
{
	sprite_index = sPaper;
}

if (mouse_check_button_pressed(mb_left))
{
	if (abs(mouse_x - x) < 200) and (abs(mouse_y - y) < 200)
	{
		with (oGame)
		{
			selection = 1;
			playerturn = false;
			aiturn = true;
		}
		instance_destroy(oRock);
		instance_destroy(oScissors);
		instance_destroy();
	}
}