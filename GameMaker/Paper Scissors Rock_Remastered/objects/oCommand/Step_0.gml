if (keyboard_check(vk_control) and keyboard_check(vk_alt) and keyboard_check_pressed(ord("S")))
{
	visble = !visble;
}

if (visble)
{
	prompt = keyboard_string;
	if (keyboard_check_pressed(vk_enter))
	{
		if (prompt = "/SetAIName")
		{
			prompt = "";
			keyboard_string = "";
			visble2 = true;
			visble = false;
		}
		if (prompt = "/SetYourName")
		{
			prompt = "";
			keyboard_string = "";
			visble3 = true;
			visble = false;
		}
		if (prompt = "/default")
		{
			prompt = "";
			keyboard_string = "";
			ainame = "AI";
			yourname = "Your";
			visble = false;
		}
		else
		{
			if (string_length(prompt) > 0 and string_length(prompt) < 5)
			{
				number = string_digits(prompt);
				if (real(number))
				{
					oGame.pscore = number;
				}
				prompt = "";
				keyboard_string = "";
				visble = false;
			}
		}	
	}
}
if (visble2)
{
	prompt2 = keyboard_string;
	if (keyboard_check_pressed(vk_enter))
	{
		if (string_length(prompt2) > 0)
		{
			if (prompt2 = "/default")
			{
				ainame = "AI";
			}
			else
			{
				ainame = prompt2;
			}
			prompt2 = "";
			keyboard_string = "";
			visble2 = false;
		}

	}
}
if (visble3)
{
	prompt3 = keyboard_string;
	if (keyboard_check_pressed(vk_enter))
	{
		if (string_length(prompt3) > 0)
		{
			if (prompt3 = "/default")
			{
				yourname = "Your";
			}
			else
			{
				yourname = prompt3;
			}
			prompt3 = "";
			keyboard_string = "";
			visble3 = false;
		}

	}
}