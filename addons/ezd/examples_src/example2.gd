class_name Example2
extends KinematicBody2D
# Example 2: Character Movement


export var speed := 500.0
export var smoothness := 5.0
export var easing := -1.5

var _dir: Vector2
var _vel: Vector2


func _process(delta: float) -> void:
	apply_input()
	

func _physics_process(delta: float) -> void:
	apply_movement(delta)

func apply_input() -> void:
	var x := Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	
	var y := Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	
	_dir = Vector2(x, y)

func apply_movement(delta : float) -> void:
	var target := _dir * speed
	
	_vel = Ezd.get_ezd_vec2(_vel, target, smoothness * delta, easing)
	
	_vel = move_and_slide(_vel, Vector2.UP)


func _on_next_button_up() -> void:
	get_tree().change_scene("res://addons/ezd/examples/example3.tscn")


func _on_previous_button_up() -> void:
	get_tree().change_scene("res://addons/ezd/examples/example1.tscn")

