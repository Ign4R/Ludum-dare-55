extends Node2D
class_name EntityArea
var damage_area = 5
var can_attack= false
#VARIABLES MODIFICABLES

func _process(delta):
	if can_attack:
		attack()
	pass
#ACA DEBE HABER UN TIEMPO DE VIDA DEL SLIME
func attack():
	#enemy.take_life(damage_area)
	print("ejecutando habilidad de tipo RANGE")
	#HACER LA LOGICA DEL ATAQUE 
	#LLAMAR AL SONIDO Y ANIMACION 
	
func _on_Area2D_body_entered(body):
	if body.is_in_group("enemy"):
		print("AGARRE AL ENEMIGO, INICIAR ATAQUE")
		var enemy = body.get_node("..")
		#can_attack= true
		print(enemy)
		#iniciar ataque
