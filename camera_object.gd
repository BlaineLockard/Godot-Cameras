extends Node3D
class_name CameraObject

@export var next: CameraObject

@onready var camera: Camera3D = $Camera3D

var isActive: bool = false


func _ready() -> void:
	pass


func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept") and isActive:
		toNext()


func switchTo():
	print("hello I am: " + name)
	print("My next is: " + next.name + "\n")
	isActive = true
	camera.make_current()


func toNext():
	if next:
		isActive = false
		next.switchTo()
