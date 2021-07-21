class_name Example3
extends Sprite
# Example 3: Rotation


export var speed := 100.0
export var smoothness := 5.0
export var easing := -1.5

var _dir: float
var _target: float


func _process(delta: float) -> void:
	get_input()
	apply_rotation(delta)


func get_input():
	_dir = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")


func apply_rotation(delta):
	_target += _dir * speed * delta
	
	global_rotation_degrees = Ezd.get_ezd_degrees(global_rotation_degrees, _target,
		smoothness * delta, easing)


func _on_previous_button_up() -> void:
	get_tree().change_scene("res://addons/ezd/examples/example2.tscn")

