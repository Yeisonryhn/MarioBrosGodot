extends KinematicBody2D

var GRAVEDAD = 200
var velocidad = Vector2()


	
func _ready():	
	velocidad.x = 0
	velocidad.y = 0 

func _physics_process(delta):	
	velocidad.y += GRAVEDAD * delta
	var movimiento = velocidad * delta
	move_and_collide(movimiento)
	
