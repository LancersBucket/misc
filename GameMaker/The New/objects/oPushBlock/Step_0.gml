vsp = vsp + grv
if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp
vsp = 0;

if (place_meeting(x + hsp,y,oWall))
{
	//While not meeting the wall by x+(1,-1, or 0)
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		//Add x by the sign of hsp to get closer to
		//wall but not go into it
		x += sign(hsp);
	}
	//After, set hsp and hsp to 0 to stop player from moving
	hsp = 0;
	locked = true;
}
if (!locked) {
	x = floor(x + hsp)
}

if (hsp > 0) {
	hsp -= min(.16, hsp)
}
//Otherwise, if hsp is smaller than zero, add to get back to zero
else if (hsp < 0) {
	hsp += max(.16, hsp)
}