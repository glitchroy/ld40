if (activated == false || gameGetState() = "Info") {
	shader_set(shaderGrayscale);
}

draw_self();

shader_reset();