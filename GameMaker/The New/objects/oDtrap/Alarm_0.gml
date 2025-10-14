with (instance_create_layer(x,y,"Interact",oDart)) {
	speed = 5;
	direction = other.image_angle
}
alarm[0] = 3*room_speed;