extends SlimeBase

#VARIABLES MODIFICABLES
func _physics_process(delta):
		pass
	#if(tipo_de_ataque):
		#body.takeDamage(damage)

func _ready():
	pass 
func attack(body):
	print("ejecutando habilidad de tipo Melee")
	var enemy = body.get_node()
	#canAttack =true

func tipo_de_ataque():
	
	pass
	#HACER LA LOGICA DEL ATAQUE
	#LLAMAR AL SONIDO Y ANIMACION 
