extends Control

func _ready():
	pass

func _on_PlayButton_pressed():
	get_tree().change_scene("res://Scenes/LobbyScene.tscn")

func _on_OptionsButton_pressed():
	get_tree().change_scene("res://Scenes/OptionsScene.tscn")
