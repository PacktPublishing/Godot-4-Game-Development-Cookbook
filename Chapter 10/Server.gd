extends Node3D

var character = preload("res://Character.tscn")
var Port = 5555
var multi_peer = ENetMultiplayerPeer.new()

func _on_host_button_pressed():
	multi_peer.create_server(Port)
	multiplayer.multiplayer_peer = multi_peer
	multiplayer.peer_connected.connect(add_player)
	add_player(multiplayer.get_unique_id())

func _on_join_button_pressed():
	multi_peer.create_client("localhost", Port)
	multiplayer.multiplayer_peer = multi_peer

func add_player(peer_id):
	var player = character.instantiate()
	player.name = str(peer_id)
	add_child(player)
