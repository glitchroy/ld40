// Zooming Playfield //

// Click Dragging //
if (mouse_check_button_pressed(mb_right)) {
	mouseLastX = mouseGetX();
	mouseLastY = mouseGetY();
}

if (mouse_check_button(mb_right)) {
	
	var mx = mouseGetX();
	var my = mouseGetY();
	
	if (mouseLastX != mx || mouseLastY != my) {
		//mouse moved
		var deltaX = mx - mouseLastX;
		var deltaY = my - mouseLastY;
		
		log("deltax: " + string(deltaX) + ", deltay: " + string(deltaY));
		
		var cx = camera_get_view_x(view_camera[0]);
		var cy = camera_get_view_y(view_camera[0]);
		
		var newX = cx - deltaX;
		var newY = cy - deltaY;
		
		if (newX != cx || newY != cy) {
			//update
			camera_set_view_pos(
					view_camera[0],
                    clamp(newX,
						  -panMargin,
						  room_width - camera_get_view_width(view_camera[0]) + panMargin
						  ),
                    clamp(newY,
						  -panMargin,
						  room_height - camera_get_view_height(view_camera[0]) + panMargin
						  )
					);

			mouseLastX = mouseGetX();
			mouseLastY = mouseGetY();
		}
		
	}
	
}


// Zooming Window //
if (keyboard_check_pressed(ord("Z"))) {
	//Update windowScale
	windowScale++;
	if (windowScale > windowScaleMax) {
		windowScale = 1;
	}
	
	var windowWidth = nativeWidth*windowScale;
	var windowHeight = nativeHeight*windowScale;
	
	//Change window size and center it
	window_set_rectangle(
		(display_get_width() - windowWidth) * 0.5, 
		(display_get_height() - windowHeight) * 0.5, 
		windowWidth,
		windowHeight
	);
	
	//Set GUI to always be as big
	display_set_gui_size(windowWidth/windowScale,
						 windowHeight/windowScale);
	
	//Set AppSurface to window size 1:1 for subpixels
	if (allowSubpixels) {
		surface_resize(application_surface,
			            windowWidth,
						windowHeight);
	}
}