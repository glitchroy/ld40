//Draw Hover image when placing
if (!placed) {
	draw_sprite_ext(sprite_index,
					image_index,
					x,
					y,
					image_xscale,
					image_yscale,
					image_angle,
					placePossible ? c_white : c_red,
					0.5);
					
}