extends Node2D

@export var score = 0
@export_range(0, 100, .1) var input_range
enum WeatherEnum {Sunny, Rainy, Cloudy = -1}
@export var weather: WeatherEnum
@export_file("*.txt") var file
@onready var camera = $Camera2d


func _ready():
	pass
	


