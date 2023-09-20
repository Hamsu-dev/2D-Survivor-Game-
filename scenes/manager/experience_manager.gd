extends Node

var current_experience = 0

func _ready():
	GameEvents.experience_coin_collected.connect(on_experience_coin_collected)


func increment_experience(number: float):
	current_experience += number
	print(current_experience)


func on_experience_coin_collected(number: float):
	increment_experience(number)
