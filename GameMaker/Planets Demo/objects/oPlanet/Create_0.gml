angle = irandom(359);
x_start = mouse_x
y_start = mouse_y

radi = point_distance(x_start,y_start,oSun.x,oSun.y)

if (irandom(1) == 1) {
	temp = instance_create_layer(x,y,"Instances",oMoon);
	with (temp) {
		caller = other.id;
		radi = irandom_range(50,60)
	}
}

color = make_color_rgb(
irandom_range(0,255),
irandom_range(0,255),
irandom_range(0,255))