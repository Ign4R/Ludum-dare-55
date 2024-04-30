extends TextureButton

var mainScene = "res://_main/scenes/Menus/MenuDeInicio.tscn"

func _ready():
	connect("pressed", self, "_on_button_pressed")
	
func _on_button_pressed():
	get_tree().change_scene(mainScene)
