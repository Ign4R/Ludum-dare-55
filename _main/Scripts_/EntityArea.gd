extends Node2D
class_name EntityArea
export (int) var damage_area
var can_attack= false
onready var enemy = null
var life_slime
#VARIABLES MODIFICABLES
func _ready():
	$Timer.start()
func _process(delta):
	if can_attack:
		attack()
	pass
#ACA DEBE HABER UN TIEMPO DE VIDA DEL SLIME
func attack():
	print("ejecutando habilidad de tipo RANGE")
	enemy.take_life(damage_area)
	#HACER LA LOGICA DEL ATAQUE 
	#LLAMAR AL SONIDO Y ANIMACION 
	
func _on_Area2D_body_entered(body):
	if body.is_in_group("enemy"):
		enemy = body.get_node("..")
		can_attack= true

func _on_Area2D_body_exited(body):
	can_attack= false
	pass # Replace with function body.


func _on_Timer_timeout():
	
	pass # Replace with function body.
