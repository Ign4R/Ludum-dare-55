extends Node2D
class_name EntityArea
export (int) var damage_area
export (int) var attack_interval = 1
var button_invoker
var curr_time
var max_time=5
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

func destroy():
	$Timer.stop()
	queue_free()
	pass
func attack():
	print("ATTACK ON")
	enemy.take_life(damage_area)
	attack_current = 0

func _on_Area2D_body_entered(body):
	if body.is_in_group("enemy"):
		attack_current=attack_interval
		print("HA ENTRADO EL ENEMY")
		enemy = body.get_node("..")
		can_attack= true
		print(enemy.name)


func _on_Area2D_body_exited(body):
	print("HA SALIDO EL ENEMY")
	can_attack = false
	var enemy_exit=body.get_node("..")
	enemy_exit.modulate = Color(1, 1, 1)
	print("Enemy life EXIT: " + str(enemy_exit.life))
	pass # Replace with function body.





