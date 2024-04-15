extends Node2D

func _ready():
	pass
	
func _enter_tree():
		var hola = get_node("../..").get_child(1).get_children()
		#print(hola)
