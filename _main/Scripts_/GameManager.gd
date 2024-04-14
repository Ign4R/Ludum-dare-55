extends Node2D
class_name Global

var slime_current
func _ready():
	pass
	
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
	
	

