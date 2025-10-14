//if not finished adding characters, and player is meeting
if (characters <= message_length) && (place_meeting(x,y,oPlayer)) {
	hold = 0;
	//add character to screen by increase
    characters += increase * (1 + hold);
    message_draw = string_copy(message[message_current], 0, characters);
}
//otherwise if player is still meeting and string is finished
//keep string at current characters
else if (characters = message_length) && (place_meeting(x,y,oPlayer)) {
	characters = message_length;
}
//otherwise, if player is no longer meeting, delete text
else if (!place_meeting(x,y,oPlayer)) {
	characters = 0;
	message_draw = "";
}
