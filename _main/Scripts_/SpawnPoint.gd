extends Position2D

onready var enemy1 = preload("res://_main/scenes/Enemies/Enemigo1.tscn")

onready var wave1 = [enemy1, enemy1, enemy1]
onready var wave2 = [enemy1, enemy1, enemy1, enemy1]
onready var wave3 = [enemy1, enemy1, enemy1, enemy1, enemy1]
onready var all_waves = [wave1, wave2, wave3]
onready var oleadaActual = 0 #Se aumenta cuando se gana la oleada, aparece la pantalla de ganar y se toca el boton de siguiente oleada
onready var num_enemy = 0

func _ready():
	$Timer.start() #Cuando hay nueva oleada hay que darle start de nuevo
	pass
	
func _process(delta):
	#spawn_enemies()
	pass
	
func spawn_enemies():	
	num_enemy += 1
	GameManager.enemies_max_round = num_enemy 
	oleadaActual = GameManager.wave_count
	var enemy_instance = all_waves[oleadaActual][num_enemy].instance()
	add_child(enemy_instance)

func _on_Timer_timeout():
	if(num_enemy< all_waves[oleadaActual].size()):
		spawn_enemies()
	else:
		$Timer.stop()
		num_enemy = 0


