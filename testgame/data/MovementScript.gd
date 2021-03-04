extends KinematicBody2D

var velocity = Vector2(0,0)
const GRAVITY = 30
const JUMPFORCE = -900
const MEGAJUMP = -1300

func _physics_process(_delta):
	if Input.is_action_pressed("ui_forward"):
		velocity.x = 100
	if Input.is_action_pressed("ui_backward"):
		velocity.x = -100
		
	velocity.y = velocity.y + GRAVITY
	
	if Input.is_action_just_pressed("ui_jump") and is_on_floor():
		velocity.y = JUMPFORCE
	if Input.is_action_just_pressed("mega") and is_on_floor():
		velocity.y = MEGAJUMP
	
	velocity = move_and_slide(velocity,Vector2.UP)
	
	velocity.x = lerp(velocity.x,0,0.1)
