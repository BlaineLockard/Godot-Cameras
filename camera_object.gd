extends Node3D
class_name CameraObject

@export var next: CameraObject

@onready var camera: Camera3D = $Camera3D


var isActive: bool = false


func switchTo():
	isActive = true
	camera.make_current()


func toNext():
	if next and isActive:
		isActive = false
		next.switchTo()
