extends CharacterBody2D 

const SPEED = 100

@onready var nav_agent = $NavigationAgent2D 

@export var target = Vector2(1125,525) 

func _ready(): 
	nav_agent.set_target_position(target) 

func _physics_process(delta):
	if nav_agent.is_target_reachable(): 
		var next_location = nav_agent.get_next_path_position() 
		var direction = global_transform.origin.direction_to(next_location).normalized() * SPEED 
		global_position += direction * delta 
		move_and_slide()

