if (playercontrol) {
	if keyboard_check_pressed(ord("S")) {
		if !place_meeting(x,y+1,oWall) {
			y=y+32
		}
	}
	if keyboard_check_pressed(ord("W")) {
		if !place_meeting(x,y-1,oWall) {
			y=y-32
		}
	}
	//if keyboard_check_pressed(ord("A")) {
		//if !place_meeting(x-1,y,oWall) {
		//	x=x-32
		//}
	//}
	if keyboard_check_pressed(ord("D")) {
		if !place_meeting(x+1,y,oWall) {
			x=x+32
		}
	}
	if keyboard_check_pressed(ord("R")) {
		room_restart();
	}
}