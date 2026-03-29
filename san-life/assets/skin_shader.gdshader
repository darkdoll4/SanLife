shader_type canvas_item;

uniform vec4 skin_color : source_color = vec4(1.0);


void fragment() {
	vec4 tex = texture(TEXTURE, UV);
	float gray = dot(tex.rgb, vec3(0.333));
	COLOR.rgb = skin_color.rgb * gray * 2.0;
	COLOR.a = tex.a;
}


//void light() {
//	// Called for every pixel for every light affecting the material.
//	// Uncomment to replace the default light processing function with this one.
//}
