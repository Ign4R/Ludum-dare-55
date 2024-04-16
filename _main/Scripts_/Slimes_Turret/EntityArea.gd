extends Node2D
class_name EntityArea
export (int) var damage_area
export (int) var attack_interval = 1
var can_attack= false
onready var enemy = null
var life_slime
onready var attack_current = attack_interval

func _ready():
	pass

func _process(delta):
	if(can_attack):
		attack_current += delta
		if attack_current >= attack_interval:
			attack()
	
func attack():
	print("ATTACK ON")
	enemy.take_life(damage_area)
	attack_current = 0

func _on_Area2D_body_entered(body):
	if body.is_in_group("enemy"):
		print("HA ENTRADO EL ENEMY")
		enemy = body.get_node("..")
		can_attack= true
		print(enemy.name)


func _on_Area2D_body_exited(body):
	print("HA SALIDO EL ENEMY")
	var enemy_exit=body.get_node("..")
	print("Enemy life EXIT: " + str(enemy_exit.life))
	can_attack = false
	pass # Replace with function body.




