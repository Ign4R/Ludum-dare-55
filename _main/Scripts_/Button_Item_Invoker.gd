extends TextureButton
onready var node = get_parent()

func _ready():
	connect("pressed", self, "_on_button_pressed")


	
func _on_button_pressed():
	print("slime invoked")
	if GameManager.slime_current!=null:
	 GameManager.instantiate_slime(node.position)
	 visible=false

	




