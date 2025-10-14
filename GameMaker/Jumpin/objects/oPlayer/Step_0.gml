//if (playercontrol) {
	key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
	key_up = keyboard_check(vk_up) or keyboard_check(ord("W"));
	key_down = keyboard_check(vk_down) or keyboard_check(ord("S"));
/*}
else {
	key_left = 0;
	key_right = 0;
	key_up = 0;
	key_down = 0;
}*/

//Movement
var horizontal = key_right - key_left;
var vertical = key_down - key_up;

//hsp = horizontal * movesp;
vsp = vsp + grv;
	
//Horizontal Collision
if (place_meeting(x+hsp,y,oWall)) {
	while (!place_meeting(x+sign(hsp),y,oWall)) {
		x = x + sign(hsp);
	}
	hsp = 0;
}

//Vertical Collision 
if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall)) {
		y = y + sign(vsp);
	}
	vsp = -vsp / 2;
	hsp = hsp / 1.5;
	if (abs(vsp) <= 0.15) {
		vsp = 0;
	}
}

if (hsp < 0.5) {
	hsp = 0;
	layer_hspeed("Background",0);
}


y = y + vsp;

layer_hspeed("Background",-hsp);

distance += hsp/100;