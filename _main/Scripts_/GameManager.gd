extends Node2D
class_name Global

var slime_current
var life = 3
var principalMenu = "res://_main/scenes/Menus/MenuDeInicio.tscn"

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

func game_over():
	if(life <= 0):
		get_tree().change_scene(principalMenu)

