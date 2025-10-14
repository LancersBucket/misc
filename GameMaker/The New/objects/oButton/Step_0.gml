if (place_meeting(x,y,oPlayer) && (oButtonWall.Touchingtopwall = false))
{
	oButtonWall.y = oButtonWall.y + 1
	OnButtonUp = true
}
if (!place_meeting(x,y,oPlayer) && (oButtonWall.Touchingbottomwall = false))
{
	oButtonWall.y = oButtonWall.y - 1
	OnButtondown = true
	OnButtonUp = false
}
else
{
	OnButtondown = false
}