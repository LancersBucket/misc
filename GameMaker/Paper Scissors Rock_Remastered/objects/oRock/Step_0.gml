if (commmode)
{
	sprite_index = sHammer;
}
else
{
	sprite_index = sRock;
}

if (mouse_check_button_pressed(mb_left))
{
	if (abs(mouse_x - x) < 200) and (abs(mouse_y - y) < 200)
	{
		with (oGame)
		{
			selection = 3;
			playerturn = false;
			aiturn = true;
		}
		instance_destroy(oScissors);
		instance_destroy(oPaper);
		instance_destroy();
	}
}