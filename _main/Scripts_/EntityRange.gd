extends Node2D
#VARIABLES MODIFICABLES
var damage_area= 10
var can_attack = false
func _ready():
	pass 
	
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

