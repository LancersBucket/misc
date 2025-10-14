if (meeting) {
	draw_set_color(c_black)
	draw_rectangle(x - (string_width(description)/2) , y-64, x + (string_width(description)/2), y - 20, false); 
	draw_set_color(c_white)
	draw_set_halign(fa_center);
	draw_text(x,y-64, name + "\n" + description);
	draw_set_halign(fa_left);
	
}