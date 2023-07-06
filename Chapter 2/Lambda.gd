extends Node2D

@onready var button = $Button

func _ready():
	var lambda = func(greeting):
		print(greeting)
	lambda.call("hello")
	
	var health = 100
	var player_health = func(): print("Current health ", health)
	player_health.call()
	
	button.button_down.connect(func(): print("Button was pressed"))
		
	var button_released = func(): 
		print("Button released")
	button.button_up.connect(button_released)
	
	var tween = create_tween()
	tween.tween_method(func(pos): button.position.x = pos,0,500,1)
