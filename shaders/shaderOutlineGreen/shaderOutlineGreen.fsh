//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float pixelH;
uniform float pixelW;

void main()
{
	vec2 offsetx;
	offsetx.x = pixelW;
	vec2 offsety;
	offsety.y = pixelH;
	
	float alpha = texture2D( gm_BaseTexture, v_vTexcoord ).a;
	vec4 newcol = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	float alphat = ceil(texture2D( gm_BaseTexture, v_vTexcoord - offsety).a);
	float alphab = ceil(texture2D( gm_BaseTexture, v_vTexcoord + offsety).a);
	float alphar = ceil(texture2D( gm_BaseTexture, v_vTexcoord + offsetx).a);
	float alphal = ceil(texture2D( gm_BaseTexture, v_vTexcoord - offsetx).a);
	
	if (alpha == 0.0 && (alphat == 1.0 || alphab == 1.0 || alphar == 1.0 || alphal == 1.0)) {
		alpha = 1.0;
		newcol = vec4(0.0, 1.0, 0.0, 1.0);	
	} 
	
    gl_FragColor = newcol;
}
