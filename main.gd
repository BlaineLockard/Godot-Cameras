extends Node3D

@export var startingCam: CameraObject

func _ready() -> void:
	startingCam.switchTo()
