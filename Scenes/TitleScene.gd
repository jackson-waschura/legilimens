extends Control

func _ready():
	pass

func _on_PlayButton_pressed():
	get_tree().change_scene("res://Scenes/LobbyScene.tscn")
