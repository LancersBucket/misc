image_angle = point_direction(x,y,oPlayer.x,oPlayer.y)


x = x + lengthdir_x(2,image_angle);
y = y + lengthdir_y(2,image_angle);

if (hp <= 0) {
	instance_destroy()
}