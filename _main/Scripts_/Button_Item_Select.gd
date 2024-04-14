extends TextureButton
export (PackedScene) var slime

#VARIABLES MODIFICABLES

func _ready():	
	connect("pressed", self, "_on_button_pressed")
func _process(delta):
	pass
	#TIMER PARA VOLVER A PONER EN DISABLED = FALSE
	
func _on_button_pressed():
	if GameManager.slime_current!=null: 
		return null
	else:
		print("slime selected")
		GameManager.slime_current = slime
		disabled = true
		#ACA DEBE ARRANCAR UN TIMER
		


