shader_type spatial;

instance uniform vec3 color;
instance uniform float alphachannel = 1;

void fragment() {
	ALBEDO = color.xyz;
	ALPHA = alphachannel;
}
