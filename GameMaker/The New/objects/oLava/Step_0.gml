if (Lavarising)
{
	y = y - 1;
}
if (lavareset)
{
	Lavarising = false;
	lavareset = false;
	y = ystart;
}
if (place_meeting(x,y,oPlayer))
{
	lavareset = true;
}