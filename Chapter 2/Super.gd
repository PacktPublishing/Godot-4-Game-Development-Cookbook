extends Node2D

func _ready():
	var enemy = DefaultEnemyClass.new()
	var sniper = SniperEnemyClass.new()
	
	enemy.rifle()
	enemy.orders()
	sniper.rifle()

class DefaultEnemyClass extends Node2D:
	func rifle():
		print("Basic rifle")	
	func orders():
		print("Guard the front gate.")

class SniperEnemyClass extends DefaultEnemyClass:
	func rifle():
		print("Sniper rifle")
		super.orders()
		super()
