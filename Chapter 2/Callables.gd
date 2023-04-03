extends Node2D

@onready var button = $Button

func _ready():
	button.pressed.connect(signal_callable.bind("binding_"))
	var pt = player_text
	pt.call("Hello, NPC!")

func signal_callable(param):
	print(param, "This method was called by the button pressed signal.")

func player_text(param: String):
	print(param)
