extends Node

func play(audio: AudioStream, single=false) -> void:
	if not audio:
		return
	
	if single:
		stop()
	
	for player in get_children():
		player = player as AudioStreamPlayer
		
		player.volume_db = 0
		
		if not player.playing:
			player.stream = audio
			player.play()
			break


func stop() -> void:
	for player in get_children():
		player = player as AudioStreamPlayer
		player.stop()


func fade_out_volume() -> void:
	for player in get_children():
		player = player as AudioStreamPlayer
		
		var tween := create_tween()
		
		tween.tween_property(player, "volume_db", -50, 5)
		tween.tween_callback(stop)
