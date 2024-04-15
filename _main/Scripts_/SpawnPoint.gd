extends Position2D

onready var enemy1 = preload("res://_main/scenes/Enemies/Enemigo1.tscn")

onready var wave1 = [enemy1, enemy1]
onready var wave2 = []
onready var wave3 = []
onready var wave4 = []
onready var wave5 = []
onready var all_waves = [wave1, wave2, wave3, wave4, wave5]

onready var oleadaActual = 0 #Se aumenta cuando se gana la oleada, aparece la pantalla de ganar y se toca el boton de siguiente oleada
onready var contador = 0

func _ready():
	$Timer.start() #Cuando hay nueva oleada hay que darle start de nuevo
	pass
	
func _process(delta):
	#spawn_enemies()
	pass
	
func spawn_enemies(oleada):
	if(contador < wave1.size()):
		var enemy_instance = all_waves[oleada][contador].instance()
		add_child(enemy_instance)
	else:
		$Timer.stop()
		contador = 0

func _on_Timer_timeout():
	spawn_enemies(oleadaActual)
	contador += 1
	
	

