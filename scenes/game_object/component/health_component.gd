extends Node
class_name HealthComponent

@export var max_health: float = 10
var current_health
signal died

# Called when the node enters the scene tree for the first time.
func _ready():
	current_health = max_health


func damage(damage_amount: float):
	current_health = max(current_health - damage_amount, 0)
	if current_health == 0:
		died.emit()
		owner.queue_free()
