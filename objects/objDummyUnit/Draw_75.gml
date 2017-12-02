
if (!canBuy) {
	shader_set(shaderGrayscale);
}

draw_sprite_ext(sprite_index,
				image_index,
				x-scale/2,
				y-scale/2,
				1+scale/10,
				1+scale/10,
				image_angle,
				image_blend,
				image_alpha);
				
shader_reset();