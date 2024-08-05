extends CharacterBody2D

const WALK_SPEED = 250.0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _physics_process(delta):
	var player := get_tree().current_scene.get_node("Player") as Node2D
	
	var dir = (player.global_position - global_position).normalized()
	
	velocity = dir * WALK_SPEED
	
	move_and_slide()
	
