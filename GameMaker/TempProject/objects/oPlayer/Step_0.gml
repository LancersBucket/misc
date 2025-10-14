depth = -y;

if (playercontrol)
{
	key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
	key_up = keyboard_check(vk_up) or keyboard_check(ord("W"));
	key_down = keyboard_check(vk_down) or keyboard_check(ord("S"));
}
else
{
	key_left = 0;
	key_right = 0;
	key_up = 0;
	key_down = 0;
}

//Movement
var horizontal = key_right - key_left;
var vertical = key_down - key_up;

hsp = horizontal * movesp;
//vsp = vsp + grv;
vsp = vertical * movesp;

//Horizontal Collision
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

//Vertical Collision 
if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
/*if (place_meeting(x,y+1,oWall) and (key_up))
{
	vsp = jump;
}*/
x = x + hsp;
y = y + vsp;

if (keyboard_check_pressed(vk_shift)) {
	if (player_face) {
		x = x - 200
	}
	else {
		x = x + 200
	}
}

if (hsp != 0)
{
	image_xscale = -sign(hsp);
	player_face = clamp(image_xscale,0,1)
}