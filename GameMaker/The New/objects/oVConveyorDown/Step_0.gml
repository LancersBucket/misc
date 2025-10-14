if (place_meeting(x - 1,y,oPlayer)) {
	oPlayer.y = oPlayer.y + 3;
}

if (place_meeting(x + 1,y,oPlayer)) {
	oPlayer.y = oPlayer.y - 4;
}

if (place_meeting(x,y - 1,oPlayer)) {
	oPlayer.x = oPlayer.x - 5;

}
if (place_meeting(x,y + 1,oPlayer)) {
	oPlayer.x = oPlayer.x + 5;
}