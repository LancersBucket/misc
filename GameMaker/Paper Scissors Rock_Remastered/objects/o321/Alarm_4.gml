oGame.results = false;
oGame.playerturn = true;
oGame.aipick = 0;

if (commmode) {
	instance_create_depth(128,288,100,omanflip);
	instance_create_depth(896,288,100,oman);	
}

//layer_set_visible("Assets_1",true);

instance_destroy();