extends Node

func _on_jugar_pressed():
	get_tree().change_scene("res://ESCENAS/juego.tscn")
func _on_creditos_pressed():
	get_tree().change_scene("res://ESCENAS/creditos.tscn")
