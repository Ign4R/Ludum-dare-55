extends Node2D
class_name Global

onready var kill_count=0
var enemies_max_round
var slime_current
var life = 3
var life_text
onready var wave_count = 0 
onready var timer = $SpawnPoint/Timer

func _ready():
	life_text = $"../RichTextLabel"
	
	pass
	
func _process(delta):
	game_over()
	
# Método estático para instanciar un slime
func instantiate_slime(pos):
	if slime_current !=null:
		print(slime_current)
		var instance = slime_current.instance()
		add_child(instance)		
		instance.position = pos
		slime_current=null
	else:
		print("No seleccionaste ningun slime")
	# Lógica para instanciar un slime en la posición dada
	
func restar_vida():
	life -= 1
	print(life)

func enemy_kill():
	kill_count+=1
	if(kill_count >= enemies_max_round and wave_count < 3):
		print("CAMBIO DE RONDA")
		print(timer)
		enemies_max_round = 0
		kill_count=0
		wave_count+=1
		timer.start()

func game_over():
	if(life <= 0):
		print("pausar juego y cargar pantalla de derrota")

