windowScale = 3;
windowScaleMax = 8;

mouseLastX = mouse_x;
mouseLastY = mouse_y;

panMargin = 10;

camera = camera_create_view(0,
							0,
							nativeWidth,
							nativeHeight)
							
view_set_camera(0, camera);


// INITAL SETUP //
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
surface_resize(application_surface,
	            windowWidth,
				windowHeight);