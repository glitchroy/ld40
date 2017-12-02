draw_set_color(c_black);
draw_set_font(fontSmall);
var s =
	   "mx: " +   string(mouseGetX()) +
	   "\nmy: " + string(mouseGetY()) +
	   "\nmlastx: " + string(mouseLastX) +
	   "\nmlasty:" + string(mouseLastY) +
	   "\nscale: " + string(windowScale) +
	   "\ncamx: " + string(camera_get_view_x(view_camera[0])) +
	   "\ncamy: " + string(camera_get_view_y(view_camera[0]));
draw_text(2, 2, s);