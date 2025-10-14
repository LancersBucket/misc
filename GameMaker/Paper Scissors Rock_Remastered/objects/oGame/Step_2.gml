if (playerturn and !exists) {
	instance_create_layer(roomw - 200,roomh - 150,"Instances",oRock);
	instance_create_layer(roomw / 2,roomh - 150,"Instances",oScissors);
	instance_create_layer(200,roomh - 150,"Instances",oPaper);
}
if (aiturn) {
	aipick = choose(1,2,3);
	aiturn = false;
	turnsover = true;
}
if (turnsover) {
	instance_create_layer(0,0,"Instances",o321);
	turnsover = false;
}
if (pscore = 10) and (!ussr) {
	instance_create_layer(roomw / 2,32,"Instances",oUSSR);
	ini_open(SAVE);
	ini_write_real("data",0,1);
	ini_close();
	ussr = true;
}
if (pscore = 50) {
	audio_play_sound(sound0,1,false);
	pscore += 1;
}
if (commmode) {
	window_set_caption("Passport, Sickle, Hammer");
	layer_set_visible("name",false);
	layer_set_visible("name2",true);
	//layer_set_visible("Assets_1",true);
}
else {
	window_set_caption("Paper, Scissors, Rock");
	layer_set_visible("name",true);
	layer_set_visible("name2",false);
	//layer_set_visible("Assets_1",false);
	//instance_destroy();
}