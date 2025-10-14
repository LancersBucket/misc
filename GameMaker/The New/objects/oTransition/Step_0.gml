if (mode != Transition_Mode.OFF)
{
	if (mode == Transition_Mode.INTRO)
	{
		percent = max(0,percent - 0.015);
	}
	else
	{
		percent = min(1,percent + 0.015);
	}
	
	if (percent == 1) or (percent == 0)
	{
		switch (mode)
		{
			case Transition_Mode.INTRO:
			{
				mode = Transition_Mode.OFF;
				break;
			}
			case Transition_Mode.NEXT:
			{
				mode = Transition_Mode.INTRO;
				room_goto_next();
				break;
			}
			case Transition_Mode.GOTO:
			{
				mode = Transition_Mode.INTRO;
				room_goto(target);
				break;
			}
		}
	}
}