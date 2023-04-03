extends Node2D

@onready var button = $Button

func _ready():
	game_dialogue()

func game_dialogue(): 
	button.text = "Dialogue text."
	print("In the game_dialogue function.")
	var next_dialogue = await skip_dialogue()
	if next_dialogue:
		print("At the end of game_dialogue function.")
		
func skip_dialogue(): 
	print("Now in the slip_dialogue() function.")
	await button.button_up
	button.text = "New dialogue text."
	print("At the end of skip_dialogue function.")
	return true



