extends Node2D
class_name Global

var place_habilited=false
var ui_lifes
onready var timer_place
onready var kill_count=0
var enemies_max_round
var slime_current
onready var maxtime_place = 5
var curr_lifes = 3
onready var wave_count = 0 
var timer = get_node_or_null("../Background/SpawnPoint/Timer")
var scene_win = "res://_main/scenes/Menus/Win_Escene.tscn"
var scene_lose = "res://_main/scenes/Menus/Defeat_Escene.tscn"

# Método estático para instanciar un slime
func instantiate_slime(pos,node):
	if slime_current !=null:
		add_child(node)
		node.position = pos
		node.timer_destroy()
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
	timer.start()
	enemies_max_round = 0
	kill_count=0
	wave_count+=1
	
		
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

