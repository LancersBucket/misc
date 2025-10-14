if (place_meeting(x+2,y,oPlayer)) || (place_meeting(x-2,y,oPlayer)) || (place_meeting(x,y+2,oPlayer)) || (place_meeting(x,y-2,oPlayer)) {
	fall = true;
}
if (fall) {
	falltimer--
}
if (falltimer = timeval - 1) {
	image_index = 1;
}
if (falltimer = timeval - 1*room_speed) {
	image_index = 2;
}
if (falltimer = timeval - (1*room_speed+(room_speed/2))) {
	image_index = 3;
}

if (falltimer <= 0) {
	x = -69;
	y = -69;
	fall = false;
	falltimer = timeval;
	reset = true;
}
if (reset) {
	resettimer--;
}
if (resettimer <= 0) {
	reset = false;
	resettimer = resettimeval;
	x = xstart;
	y = ystart;
	image_index = 0;
}