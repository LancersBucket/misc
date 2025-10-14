///@function Healthbar(x, y, health, maxhealth);

function Healthbar(_x, _y, _health, _maxhealth) {
	draw_set_halign(fa_center);
	draw_text(_x,_y,string(_health) + "/" + string(_maxhealth));
	draw_set_halign(fa_left);
}