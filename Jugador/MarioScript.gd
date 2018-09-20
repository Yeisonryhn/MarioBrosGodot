extends KinematicBody2D

var GRAVEDAD = 200
var velocidad = Vector2()
var velCaminar = 50

	
func _ready():	
	velocidad.x = 0
	velocidad.y = 0 

func _physics_process(delta):	

	if (Input.is_action_pressed("moverDerecha")):

		velocidad.x += velCaminar

	elif(Input.is_action_pressed("moverIzquierda")):

		velocidad.x += velCaminar

	else:

		velocidad.x=0
	
	velocidad.y += GRAVEDAD * delta
	var movimiento = velocidad * delta
	move_and_collide(movimiento)
	
