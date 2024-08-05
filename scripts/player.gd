extends CharacterBody2D

const WALK_SPEED = 500.0;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _physics_process(delta):
	velocity = Vector2.ZERO;
	
	if Input.is_action_pressed("move_left") :
		velocity.x += -WALK_SPEED;
	if Input.is_action_pressed("move_right") :
		velocity.x += WALK_SPEED;
	if Input.is_action_pressed("move_up") :
		velocity.y += -WALK_SPEED;
	if Input.is_action_pressed("move_down") :
		velocity.y += WALK_SPEED;
		
	move_and_slide()
	
	pass
	
