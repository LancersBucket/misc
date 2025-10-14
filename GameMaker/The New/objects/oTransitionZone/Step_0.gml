//if the player is meeting, use Transition() to change rooms
if (place_meeting(x,y,oPlayer)) {
	playercontrol = false;
	Transition(Transition_Mode.GOTO, warplocation);
}