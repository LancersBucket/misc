image_xscale = damage;
image_yscale = damage;

if (global.gun == 1) {
	damage -= 0.005
}

x = x + lengthdir_x(shotspeed,rot)
y = y + lengthdir_y(shotspeed,rot)

range -= shotspeed;

if (damage == 0) {
	instance_destroy();
}
if (range <= 0) {
	instance_destroy();
}

var _tmp = instance_place(x,y,oEnemy)
if (_tmp != noone) {
	_tmp.hp -= damage;
	instance_destroy()
}