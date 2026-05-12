extends CanvasLayer

@export var arena_time_manager: Node
@onready var label = $%Label

func _process(_delta):
	if arena_time_manager == null:
		return
		
	var time_elapsed = arena_time_manager.get_time_elapsed()
	label.text = format_seconds_to_string(time_elapsed)

func format_seconds_to_string(seconds: float):
	var minutes = int(seconds / 60)
	var remaining_seconds = int(seconds) % 60  # Forma mais simples
	
	# Retorna no formato MM:SS
	return "%d:%02d" % [minutes, remaining_seconds]
