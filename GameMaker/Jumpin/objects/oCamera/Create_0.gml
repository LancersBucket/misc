cam = view_camera[0];
follow = oPlayer;
view_w_half = camera_get_view_width(cam) / 2;
view_h_half = camera_get_view_height(cam) / 2;
xto = xstart;
yto = ystart;

x = follow.x+500;
y = follow.y;

zoomx = view_wport[0];
zoomy = view_hport[0];