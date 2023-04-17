extends Node2D

func _ready():
	var upnp = UPNP.new()
	var find_result = upnp.discover()
	
	if find_result == UPNP.UPNP_RESULT_SUCCESS:
		if upnp.get_gateway() and upnp.get_gateway().is_valid_gateway():
			var map_result_udp = upnp.add_port_mapping(5555, 0, "game_udp", "UDP", 0)
			var map_result_tcp = upnp.add_port_mapping(5555, 0, "game_tcp", "TCP", 0)
			
			if not map_result_udp == UPNP.UPNP_RESULT_SUCCESS:
				upnp.add_port_mapping(5555, 0, "", "UDP")
			if not map_result_tcp == UPNP.UPNP_RESULT_SUCCESS:
				upnp.add_port_mapping(5555, 0, "", "TCP")
			
	var external_ip = upnp.query_external_address()
	upnp.delete_port_mapping(5555, "UDP")
	upnp.delete_port_mapping(5555, "TCP")
