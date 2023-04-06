extends Node3D

func _ready():
	RenderingServer.global_shader_parameter_set("Red", Color.BLUE)
