if (commmode)
{
	sprite_index = sScikle;
}
else
{
	sprite_index = sScissors;
}

if (mouse_check_button_pressed(mb_left))
{
	if (abs(mouse_x - x) < 200) and (abs(mouse_y - y) < 200)
	{
		with (oGame)
		{
			selection = 2;
			playerturn = false;
			aiturn = true;
		}
		instance_destroy(oRock);
		instance_destroy(oPaper);
		instance_destroy();
	}
}