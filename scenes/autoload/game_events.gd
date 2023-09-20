extends Node 

signal experience_coin_collected(number: float)

func emit_experience_coin_collected(number: float):
	experience_coin_collected.emit(number)
