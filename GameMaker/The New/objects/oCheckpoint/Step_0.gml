//if meeting with player and cpon is false...
if (place_meeting(x,y,oPlayer)) && (!cpon) {
	//set sprite frame to zero
	image_index = 0;
	//set sprite to sCheckpointTrans
	sprite_index = sCheckpointTrans;
	
	//With all other oCheckpoint instances
	with (oCheckpoint) {
		//Set cpon to false
		cpon = false;	
	}
	//Then set own variable to true.
	cpon = true;
	
	//Then send current object corrdinants to oControl
	oControl.playerstartx = x
	oControl.playerstarty = y
}

//If cpon is true, set sprite to sCheckpointOff
if (!cpon) {
	sprite_index = sCheckpointOff;
}
