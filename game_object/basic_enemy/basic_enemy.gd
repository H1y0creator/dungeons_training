extends CharacterBody2D


@onready var  visuals = $Visuals
@onready var velocity_component = $VelocityComponent
# Called when the node enters the scene tree for the first time.

func _ready():
	$HurtboxComponent.hit.connect(on_hit)

func _process(_delta):
	velocity_component.accelerate_to_player()
	velocity_component.move(self)

	var move_sign = sign(velocity.x)
	if move_sign !=0:
		visuals.scale = Vector2(move_sign,1)

	
func on_hit():
	$HitRandomAudioPlayerComponent.play_random()
	
	
