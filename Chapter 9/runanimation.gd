extends Camera3D

@onready var anim = $"../AnimationPlayer"

func _ready():
	anim.play("Sun")


