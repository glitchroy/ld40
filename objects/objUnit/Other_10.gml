/// @description Shader setup
//shaderz
upixelH = shader_get_uniform(shaderOutline, "pixelH");
upixelW = shader_get_uniform(shaderOutline, "pixelW");
texelW = texture_get_texel_width(sprite_get_texture(sprite_index, 0));
texelH = texture_get_texel_height(sprite_get_texture(sprite_index, 0));