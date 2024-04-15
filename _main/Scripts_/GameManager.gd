extends Node2D
class_name Global

var kill_count
var enemies_max_round
var slime_current
var life = 3
var life_text
var wave_count

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
		enemies_max_round = 0
		kill_count=0
		wave_count+=1

func game_over():
	if(life <= 0):
		print("pausar juego y cargar pantalla de derrota")

