extends Node2D
var hearts

func _ready():
	GameManager.ui_lifes=get_node(".")
	hearts = get_children()
	for heart in hearts:
		heart.visible=true
	

func _process(delta):
	pass
