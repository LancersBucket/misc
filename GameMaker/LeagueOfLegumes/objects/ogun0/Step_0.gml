x = oPlayer.x
y = oPlayer.y
if (mouse_check_button_pressed(mb_left)) {
	_inst = instance_create_layer(x,y,"Bullets",oBullet)
	with (_inst) {
		damage = other.damage;
		shotspeed = other.shotspeed;
		range = other.range;
		rot = oPlayer.rot;
	}
}

if (gid != global.gun) {
	instance_change(global.gunlist[global.gun],true)
}