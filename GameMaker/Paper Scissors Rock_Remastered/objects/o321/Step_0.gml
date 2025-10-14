var calc = i / 30;
if (i <= 1.5*game_get_speed(gamespeed_fps)) {
	
	//print(string(i) + ":")
	//print(calc);
	if (calc = 0) {
		state = "Paper";
		if (!commmode) {
			audio_play_sound(s321first,2,false);
		}
		else {
			audio_play_sound(s321firstcomm,2,false);
		}
	}
	else if (calc = 1) {
		state = "Scissors";
		if (!commmode) {
			audio_play_sound(s321first,2,false);
		}
		else {
			audio_play_sound(s321firstcomm,2,false);
		}
	}
	else if (calc = 2) {
		state = "Rock!";
		if (!commmode) {
			audio_play_sound(s321last,2,false);
		}
		else {
			audio_play_sound(s321lastcomm,2,false);	
		}
	}
	i++;
}
else if ((i-1)/30 == 3) {
	state = ""
	with (oGame) {
		results = true;
	}

	instance_destroy(oman);
	instance_destroy(omanflip);

	//layer_set_visible("Assets_1",false);

	var finalcalc = oGame.aipick - oGame.selection;

	if (finalcalc = -2) or (finalcalc = 1) {
		oGame.aiscore += 1;
		state = "Loss!";
	}
	if (finalcalc = -1) or (finalcalc = 2) {
		oGame.pscore += 1;
		state = "Win!";
	}
	if (finalcalc = 0) {
		state = "Tie!";
	}
	if (state = "Loss!") {
		if (!commmode) {
			audio_play_sound(sLoss,2,false);
		}
		else {
			audio_play_sound(sLosscomm,2,false);
		}
	}
	if (state = "Win!") {
		if (!commmode) {
			audio_play_sound(sWin,2,false);
		}
		else {
			audio_play_sound(sWincomm,2,false);
		}
	}
	if (state = "Tie!") {
		audio_play_sound(sTie,2,false);
	}
	alarm[4] = 1 * game_get_speed(gamespeed_fps);
	i = 999;
}