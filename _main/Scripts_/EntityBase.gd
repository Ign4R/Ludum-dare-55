extends Node2D
class_name SlimeBase

func _ready():
	pass # Replace with function body.
func attack(body):
	print("ejecutar ataque de slime")

func _on_Area2D_body_entered(body):
	print(body)
