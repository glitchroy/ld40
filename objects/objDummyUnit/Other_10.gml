/// @description Shaders

//shaderz
upixelHgreen = shader_get_uniform(shaderOutlineGreen, "pixelH");
upixelWgreen = shader_get_uniform(shaderOutlineGreen, "pixelW");

upixelHred = shader_get_uniform(shaderOutlineRed, "pixelH");
upixelWred = shader_get_uniform(shaderOutlineRed, "pixelW");

texelW = texture_get_texel_width(sprite_get_texture(sprite_index, 0));
texelH = texture_get_texel_height(sprite_get_texture(sprite_index, 0));