if (1==1)
{
	draw_set_color(c_black);
	draw_set_halign(fa_left);
	if (ainame = "AI")
	{
		draw_text(10,11,ainame + " Score: " + string(aiscore));
	}
	else
	{
		draw_text(10,11,ainame +  "'s" + " Score: " + string(aiscore));
	}
	draw_set_halign(fa_right);
	if (yourname = "Your")
	{
		draw_text(roomw - 10,11,yourname + " Score: " + string(pscore));
	}
	else
	{
		draw_text(roomw - 10,11,yourname + "'s" + " Score: " + string(pscore));
	}
}
if (results)
{
	if (!commmode)
	{
		if (selection = 1)
		{
			draw_sprite(sPaper,1,roomw - 200,roomh / 2);
		}
		if (selection = 2)
		{
			draw_sprite(sScissors,1,roomw - 200,roomh / 2);
		}
		if (selection = 3)
		{
			draw_sprite(sRock,1,roomw - 200,roomh / 2);
		}
	
		if (aipick = 1)
		{
			draw_sprite(sPaper,1,200,roomh / 2);
		}
		if (aipick = 2)
		{
			draw_sprite(sScissors,1,200,roomh / 2);
		}
		if (aipick = 3)
		{
			draw_sprite(sRock,1,200,roomh / 2);
		}
	}
	else
	{
		if (selection = 1)
		{
			draw_sprite(sPassport,1,roomw - 200,roomh / 2);
		}
		if (selection = 2)
		{
			draw_sprite(sScikle,1,roomw - 200,roomh / 2);
		}
		if (selection = 3)
		{
			draw_sprite(sHammer,1,roomw - 200,roomh / 2);
		}
	
		if (aipick = 1)
		{
			draw_sprite(sPassport,1,200,roomh / 2);
		}
		if (aipick = 2)
		{
			draw_sprite(sScikle,1,200,roomh / 2);
		}
		if (aipick = 3)
		{
			draw_sprite(sHammer,1,200,roomh / 2);
		}
	}
}
if (!playerturn and hi)
{
	draw_set_alpha(0.9);
	draw_sprite(sGrey,1,roomw / 2,32);
	draw_set_alpha(1);
}
if (commmode and !results)
{
	//draw_sprite(sman,0,128,288);
	//draw_sprite(sman,0,896,228);
}