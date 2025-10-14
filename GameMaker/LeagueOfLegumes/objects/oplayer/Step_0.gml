var left = keyboard_check(ord("A"))
var right = keyboard_check(ord("D"))
var up = keyboard_check(ord("W"))
var down = keyboard_check(ord("S"))

var horizontal = right - left;
var vertical = down - up;

hsp = horizontal * mvsp;
vsp = vertical * mvsp;

x = x + hsp;
y = y + vsp;

rot = point_direction(x,y,mouse_x,mouse_y)
image_angle = rot;

/*if (mouse_check_button_pressed(mb_left)) {
	instance_create_layer(x,y,"Bullets",oBullet)
}*/
if (keyboard_check_pressed(ord("H"))) {
	instance_create_layer(mouse_x,mouse_y,"Entities",oEnemy)
}