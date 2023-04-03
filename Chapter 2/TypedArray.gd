extends Node2D

var regular_array = [4,"hello", 434]
var typed_array: Array[int] = [16, 32, 64]
var inferred_array := ["hi", "hello"]

func _ready():
	print(regular_array)
	print(typed_array)
	print(inferred_array)
