#region Control
if (playercontrol) {
	//Sets variables for checking what keys are pressed
	key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
	key_up = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W")) or (keyboard_check_pressed(vk_space));
	key_down = keyboard_check(vk_down) or keyboard_check(ord("S"));
}
else {
	//If none is pressed, set keys pressed to 0
	key_left = 0;
	key_right = 0;
	key_up = 0;
	key_down = 0;
}
//If right key is pressed, horizontal is set to 1
//If left key is pressed, horizontal is set to 0
//Otherwise, horizontal is zero
var horizontal = key_right - key_left;
//var vertical = key_down - key_up;

#endregion

//If shift key is pressed, multiply horizontal
//by runsp and set run variable to true.
if (keyboard_check(vk_shift)) && (room != rTutorial) && (room !=rTutorial2) {
	hsp = horizontal * runsp;
	run = true;
}
//Otherwise, multiply horizontal by regular movement speed
else {
	hsp = horizontal * movesp;
	run = false;
}


if (room != rTutorial) {
	//If oPlayer is meeting oWall to the left OR right
	if (place_meeting(x+image_xscale,y,oWall))
	{
		//(and) If W key is pressed...
		if (key_up) && (bufferjump > 0) && (!grounded) {
			//Set momentum equal to the opposite of the image direction
			vsp = jmp;
			momentum = -image_xscale*4;
			candoublejump = true;
			grounded = false;
			image_xscale = -image_xscale
			bufferjump = 0;
		}
		vsp = min(vsp, 1.5)
		bufferjump = 11;
	}
}

//Adds gravity value to vertical speed (making player move
//down because orgin of room is top left, therefore
//when adding to the y value you are actually moving the object down
vsp = vsp + grv;

//If oPlayer is above oWall and up key is pressed
//set vsp to jmp, making vsp negative and moving it up
bufferjump -= 1;
if (bufferjump > 0) and (key_up)
{
	vsp = jmp;
	bufferjump = 0;
}

if (instance_exists(oPushBlock)) {
	if (place_meeting(x + momentum+oPushBlock.hsp,y,oPushBlock))
	{
		oPushBlock.hsp = momentum
		if (oPushBlock.locked) {
			momentum = 0;
			hsp = 0;
		}
	}
}

//If you are about to meet with oWall on the NEXT frame
//Hence why mementum is added
if (place_meeting(x + momentum,y,oWall))
{
	//While not meeting the wall by x+(1,-1, or 0)
	while (!place_meeting(x+sign(momentum),y,oWall))
	{
		//Add x by the sign of momentum to get closer to
		//wall but not go into it
		x += sign(momentum);
	}
	//After, set momentum and hsp to 0 to stop player from moving
	momentum = 0;
	hsp = 0;
}


if (place_meeting(x + momentum,y,oDoor)) && (!instance_place(x + momentum,y,oDoor).doorstate)
{
	//While not meeting the wall by x+(1,-1, or 0)
	while (!place_meeting(x+sign(momentum),y,oDoor))
	{
		//Add x by the sign of momentum to get closer to
		//wall but not go into it
		x += sign(momentum);
	}
	//After, set momentum and hsp to 0 to stop player from moving
	momentum = 0;
	hsp = 0;
}

if ((place_meeting(x + momentum,y,oKeyDoor)) && (oKeyDoor.keydoorstate = false))
{
	//While not meeting the wall by x+(1,-1, or 0)
	while (!place_meeting(x+sign(momentum),y,oKeyDoor))
	{
		//Add x by the sign of momentum to get closer to
		//wall but not go into it
		x += sign(momentum);
	}
	//After, set momentum and hsp to 0 to stop player from moving
	momentum = 0;
	hsp = 0;
}

//Add x and momentum
x = x + momentum;

//Same thing, but for y
if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
	// v may be obsolute, i forgot
	grounded = true;
	bufferjump = 10;
}
//Otherwise, edit possibly obsolite value
else {
	grounded = false;

}

//Otherwise, edit possibly obsolite value

//Add y and vsp
y = y + vsp;

#region get out of my god damn way
if (vsp > grv) {
	sprite_index = sPlayerNewJumpDown
	image_speed = 1;
}
else if (vsp < grv) && (!grounded) {
	sprite_index = sPlayerNewJumpUp
	//image_speed = 1;
}
else if (abs(momentum) > 0) && (vsp = 0) {
	sprite_index = sPlayerNewRun
	if (run) {
		image_speed = 1.5;
	}
	else {
		image_speed = 1;
	}
}
if (momentum = 0) && (!vsp) && (grounded) {
	sprite_index = sPlayerNewIdel
	image_speed = 1;
}
#endregion

//If momentum is not equal to zero
if (hsp != 0)
{
	//Set the image direction (xscale) to the sign of momentum
	image_xscale = sign(hsp);
}

//Add the sign of hsp multiplied by 0.5 to momentum
//Essentally making acceleration when starting to move
momentum = momentum + sign(hsp)*0.5;

//If not currently running, clamp momentum between -4, and 4
//No more, no less, that is the way
if (!run) {
	momentum = clamp(momentum, -4, 4);
}
//Otherwise, if running, clamp momentum to +-runspeed
else {
	momentum = clamp(momentum, -runsp, runsp);
}

//If momentum is greater than one, reduce it by value
//or momentum, whichever is smaller
if (momentum > 0) {
	momentum -= min(0.20, momentum)
}
//Otherwise, if momentum is smaller than zero, add to get back to zero
else if (momentum < 0) {
	momentum += max(0.20, momentum)
}

#region Devmode
if (keyboard_check_pressed(vk_lalt)) {
	devmode = !devmode;
}

if (devmode) {
	if (mouse_check_button_pressed(mb_left)) {
		x = mouse_x;
		y = mouse_y;
	}
}
#endregion

#region Deathcode
//If player colides with oDeath, destory
if (place_meeting(x + momentum,y,oDeath))
{
	//See Destroy event for more information
	instance_destroy();
	if instance_exists(oKey){
		oKey.heldkey = false;
	}
	if instance_exists(oKey2){
		oKey2.heldkey2 = false;
	}
}
if (place_meeting(x,y+vsp,oDeath))
{
	instance_destroy();
	if instance_exists(oKey){
		oKey.heldkey = false;
	}
	if instance_exists(oKey2){
		oKey2.heldkey2 = false;
	}
	if instance_exists(oLava)
	{
		oLava.Lavarising = false;
		oLava.lavareset = true;
	}
}
if (place_meeting(x,y,oWall2))
{
	instance_destroy();
	if instance_exists(oKey){
		oKey.heldkey = false;
	}
	if instance_exists(oKey2){
		oKey2.heldkey2 = false;
	}
	if instance_exists(oLava)
	{
		oLava.Lavarising = false;
		oLava.y = oLava.ystart;
	}
}


#endregion

/*if (devmode) {
	reduce--;
	if (reduce = 0) {
		reduce = 1;
		instance_create_layer(x,y+14,"Interact",oCheck)
	}
}*/
//h
