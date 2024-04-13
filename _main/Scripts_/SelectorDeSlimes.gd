extends TextureButton

var slimeActual

func _ready():
	connect("pressed", self, "_on_button_pressed")
	
func _on_button_pressed():
	var slimeActual = get_child(0)
	slimeActual.hola()
