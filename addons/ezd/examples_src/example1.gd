class_name Example1
extends Node2D
# Example 1: Simple Movement Animation


export var time := 5.0
export var easing := -3.0

var _timer: float

onready var _begin: Node2D = $"../begin"
onready var _end: Node2D = $"../end"
onready var _current_target := _end
onready var _current_node := _begin


func _ready() -> void:
	global_position = _current_target.global_position


func _process(delta : float) -> void:
	_timer += delta
	
	_timer = clamp(_timer, 0, time)
	
	var x := _timer / time
	
	global_position = Ezd.get_ezd_vec2(_current_node.global_position,
		_current_target.global_position, x, easing)
	
	if x == 1:
		_timer = 0
		switch_target()


func switch_target():
	if _current_target == _begin:
		_current_target = _end
		_current_node = _begin
	
	elif _current_target == _end:
		_current_target = _begin
		_current_node=_end


func _on_next_button_up() -> void:
	get_tree().change_scene("res://addons/ezd/examples/example2.tscn")

