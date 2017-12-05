
if (sprite_index != -1) {
	if (!canBuy) {
		//shader_set(shaderGrayscale);
		shader_set(shaderOutlineRed);
		shader_set_uniform_f(upixelWred, texelW);
		shader_set_uniform_f(upixelHred, texelH);
	} else {
		shader_set(shaderOutlineGreen);
		shader_set_uniform_f(upixelWgreen, texelW);
		shader_set_uniform_f(upixelHgreen, texelH);
	}
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

