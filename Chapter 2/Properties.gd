extends Button



#var value: int = 10: set = set_value, get = get_value
#
#func set_value(new_value: int) -> void:
#	value = new_value
#	print('setter', str(value))
#
#func get_value() -> int: 
#	print('getter', str(value))
#	return value

var value: int = 10:
	set(new_value):
		value = new_value
		print('setter', str(value))
	get:
		print('getter', str(value))
		return value

func _on_pressed():
	value -= 1
