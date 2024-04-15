extends Node2D
class_name Global

var slime_current
var life = 3
var life_text

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

func game_over():
	if(life <= 0):
		print("pausar juego y cargar pantalla de derrota")

