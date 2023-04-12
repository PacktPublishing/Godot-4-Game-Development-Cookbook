extends Button

@onready var audio = $"../AudioStreamPlayer2"

func _on_pressed():
	audio.play()
