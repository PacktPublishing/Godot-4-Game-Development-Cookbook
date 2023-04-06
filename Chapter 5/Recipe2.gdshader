shader_type spatial;

uniform vec3 array[3];

void fragment() {
	ALBEDO = array[2];
}
