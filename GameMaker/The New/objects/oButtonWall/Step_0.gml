if (place_meeting(x,y - 1, oWall2) && oButton.OnButtonUp = false)
{
	y = y
	Touchingbottomwall = true
}
else
{

	Touchingbottomwall = false
}
if (place_meeting(x,y + 1, oWall2) && oButton.OnButtonUp = true)
{
	y = y
	Touchingtopwall = true
}
else
{
	Touchingtopwall = false

}
if (place_meeting(x,y + 1, oPlayer))
{
	oPlayer.y = oPlayer.y + 1
}
if (place_meeting(x,y - 1, oPlayer))
{
	oPlayer.y = oPlayer.y - 1
}