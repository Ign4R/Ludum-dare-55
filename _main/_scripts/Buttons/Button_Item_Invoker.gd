extends TextureButton
export (int) var max_time_place
onready var node = get_parent()
var count=0
onready var node_slime
onready var my_node

func _ready():
	connect("pressed", self, "_on_button_pressed")
	can_visible(true)
	my_node =get_node(".")


func _on_button_pressed():
	print("slime invoked")
	if GameManager.slime_current!=null:
		var instance = GameManager.slime_current.instance()
		node_slime = instance.get_child(0).get_parent().get_node(".")
		GameManager.instantiate_slime(node.global_position,node_slime)
		can_visible(false)
		$Timer_Place.start()

	
	
func can_visible(value):
	visible = value

func place_habilited():
	if(GameManager.place_habilited):
		can_visible(true)
		$Timer_Place.stop()
		count=0
	pass
	
func _on_Timer_timeout():
	count+=1
	if(count >= GameManager.maxtime_place):
		place_habilited()
	pass # Replace with function body.



