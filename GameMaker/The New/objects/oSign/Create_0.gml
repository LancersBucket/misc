//messages
message[0] = "Don't die"

message_current = 0; //0 is the first number in our array, and the message we are currently at
message_end = 0;
message_draw = ""; //this is what we 'write' out. It's blank right now
increase = 1; //the speed at which new characters are added
characters = 0; //how many characters have already been drawn

message_length = string_length(message[message_current]); //get the number of characters in the first message