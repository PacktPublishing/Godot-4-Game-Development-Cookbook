shader_type spatial;

global uniform vec4 Red;

void fragment() {
	ALBEDO = Red.xyz;
}
