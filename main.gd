extends Node3D

@export var currentCam: CameraObject

func _ready() -> void:
	currentCam.switchTo()

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.is_pressed():
			currentCam.toNext()
			currentCam = currentCam.next
