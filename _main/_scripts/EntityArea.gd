extends Node2D
class_name EntityArea
export (int) var damage_area
export (int) var attack_interval = 1
export (int) var max_time=5
var button_invoker
var curr_time=0
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

func timer_destroy():
	print("start timer destroy ")
	$Timer.start()
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
	if enemy!=null:
		can_attack = false
		var enemy_exit=body.get_node("..")
		if(enemy_exit!=null):
			enemy_exit.modulate = Color(1, 1, 1)
			pass # Replace with function body.

func _on_Timer_timeout():
	curr_time+=1
	if(curr_time>=GameManager.maxtime_place):
		print("DESTROY")
		curr_time=0
		queue_free()
		$Timer.stop()
	pass # Replace with function body.
