extends Position2D

onready var enemy1 = preload("res://_main/scenes/Enemies/Enemigo1.tscn")
onready var all_waves = [1, 2, 3]

var oleadaActual = 0
var num_enemy = 0

func _ready():
	$Timer.start()
	GameManager.timer= $Timer
	pass 

func spawn_enemies():
	if oleadaActual < all_waves.size():
		var wave_current = all_waves[oleadaActual]
		if num_enemy < wave_current:
			num_enemy += 1
			var enemy_instance = enemy1.instance()
			add_child(enemy_instance)
			GameManager.enemies_max_round= num_enemy
		else:
			num_enemy=0
			$Timer.stop()
	else:
		$Timer.stop()
		GameManager.win()
	

func _on_Timer_timeout():
	oleadaActual = GameManager.wave_count 
	spawn_enemies()
