#macro SAVE "save.ini"

playerturn = true;
aiturn = false;
selection = 0;
roomw = display_get_gui_width();
roomh = display_get_gui_height();
aipick = 0;
turnsover = false;
results = false;
aiscore = 00;
pscore = 0;

globalvar commmode;
commmode = false;

globalvar hi;
hi = false;

globalvar exist;
exist = false;

globalvar exists;
exists = false;

globalvar ainame;
ainame = "AI";

globalvar yourname;
yourname = "Your";

ini_open(SAVE);
data = ini_read_real("data",0,0); 
if (data){
	ussr = true;
	instance_create_layer(roomw / 2,32,"Instances",oUSSR);
}
else {
	ussr = false;
}
instance_create_layer(roomw / 2,32,"Instances",oUSSR);
playerdata = ini_read_string("data",1,"Your")
if (playerdata != "Your")
{
	yourname = playerdata;	
}
aidata = ini_read_string("data",2,"AI")
if (aidata != "AI")
{
	ainame = aidata;	
}
ini_close();