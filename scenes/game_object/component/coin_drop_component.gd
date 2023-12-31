extends Node

@export_range(0, 1) var drop_percent: float = .5
@export var health_component: Node
@export var coin_scene: PackedScene

func _ready():
	(health_component as HealthComponent).died.connect(on_died)


func on_died():
	if randf() > drop_percent:
		return
	
	if coin_scene == null:
		return
	
	if not owner is Node2D:
		return
	
	var entities_layer = get_tree().get_first_node_in_group('entities_layer')
	var spawn_position = (owner as Node2D).global_position
	var coin_instance = coin_scene.instantiate() as Node2D
	
	entities_layer.get_parent().add_child(coin_instance)
	coin_instance.global_position = spawn_position


