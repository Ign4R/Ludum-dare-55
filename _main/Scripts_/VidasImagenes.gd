extends HBoxContainer

var vidas

func _ready():
	vidas = get_children()
	
func _process(delta):
	if(GameManager.life == 2):
		vidas[0].visible = false
	elif (GameManager.life == 1):
		vidas[1].visible = false
	elif (GameManager.life == 0):
		vidas[2].visible = false
	pass
