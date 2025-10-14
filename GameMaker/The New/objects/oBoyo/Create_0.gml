message[0] = "Hello Klaw, I have been expecting you";
message[1] = "I would like to give you a gift";
message[2] = "Do you accept?";

message_current = 0; //0 is the first number in our array, and the message we are currently at
message_end = 2; //6 is the last number in our array
message_draw = ""; //this is what we 'write' out. It's blank right now
increase = .1; //the speed at which new characters are added
characters = 0; //how many characters have already been drawn
hold = 0; //if we hold 'Z', the text will render faster

message_length = string_length(message[message_current]); //get the number of characters in the first message