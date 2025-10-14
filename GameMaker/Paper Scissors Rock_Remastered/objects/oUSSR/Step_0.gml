if (oGame.playerturn)
{
	if (mouse_check_button_pressed(mb_left))
	{
		if (abs(mouse_x - x) < 50) and (abs(mouse_y - y) < 50)
		{
			commmode = !commmode;
			audio_play_sound(sUSSRsong,1,true);
			if (!exist)
			{
				instance_create_depth(128,288,100,omanflip);
				instance_create_depth(896,288,100,oman);
			}
			else
			{
				instance_destroy(oman);
				instance_destroy(omanflip);
			}
		}
	}
	if (commmode)
	{
		sprite_index = sAmerica;
	}
	else
	{
		sprite_index = sUSSR;
		audio_pause_sound(sUSSRsong);
	}
}