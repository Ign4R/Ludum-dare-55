extends Node2D
class_name Global

var button_node
var ui_lifes
onready var kill_count=0
var enemies_max_round
var slime_current
var curr_lifes = 3
onready var wave_count = 0 
var timer = get_node_or_null("../Background/SpawnPoint/Timer")
var scene_win = "res://_main/scenes/Menus/Win_Escene.tscn"
var scene_lose = "res://_main/scenes/Menus/Defeat_Escene.tscn"
func _ready():
	print("ENTRE AL GAME MANAGER")
		
func _process(delta):
	print(ui_lifes)
	pass
	
# Método estático para instanciar un slime
func instantiate_slime(pos,node):
	button_node=node
	if slime_current !=null:
		print(slime_current)
		var instance = slime_current.instance()
		add_child(instance)
		instance.position = pos
		slime_current=null
	else:
		print("No seleccionaste ningun slime")
	# Lógica para instanciar un slime en la posición dada

func damage_base():
	curr_lifes -= 1
	ui_lifes.hearts[curr_lifes].visible=false
	if(curr_lifes < 1):
		game_over()
		
func check_kills():
	kill_count+=1
	if(kill_count >= enemies_max_round and wave_count < 3):
		change_wave()
	
func change_wave():
	print("CAMBIO DE RONDA")
	print(timer)
	timer.start()
	enemies_max_round = 0
	kill_count=0
	wave_count+=1
	print(timer)
	
		
func win():
	print("GANASTEE")
	reset()
	get_tree().change_scene(scene_win)

func reset():
	wave_count=0
	curr_lifes=3
	var slimes = get_children()
	for slime in slimes:
		 slime.queue_free() 
	
func game_over():
	reset()
	get_tree().change_scene(scene_lose)

