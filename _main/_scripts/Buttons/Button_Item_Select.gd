extends TextureButton
export (PackedScene) var slime
export (int) var maxCount

var count=0

#VARIABLES MODIFICABLES

func _ready():	
	connect("pressed", self, "_on_button_pressed")
func _process(delta):
	pass
	#TIMER PARA VOLVER A PONER EN DISABLED = FALSE
	
func _on_button_pressed():
		print("slime selected")
		GameManager.slime_current = slime		
		GameManager.place_habilited=true	
		disabled = true
		$Timer.start()
		#ACA DEBE ARRANCAR UN TIMER
		

func _on_Timer_timeout():
	count+=1
	if count >=maxCount:
		disabled=false
		count=0
		$Timer.stop()
	pass # Replace with function body.
