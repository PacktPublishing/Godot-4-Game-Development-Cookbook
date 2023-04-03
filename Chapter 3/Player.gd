extends RayCast3D

@onready var raycast = $"."
@export var decal: PackedScene

func _unhandled_input(event):
	if event.is_action_pressed("ui_select") and is_colliding():
		var new_decal = decal.instantiate()
		raycast.get_collider().add_child(new_decal)
		new_decal.global_transform.origin = raycast.get_collision_point()


