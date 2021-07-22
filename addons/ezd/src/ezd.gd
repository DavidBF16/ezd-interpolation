extends Node
class_name Ezd
# get Interpolation source code


# Eased variant interpolation
static func get_ezd (from, to, weight : float, easing : float):
	return lerp(from, to, ease(weight, easing))


# Eased float interpolation
static func get_ezd_float(from : float, to : float,
		weight : float, easing : float) -> float:
	return lerp(from, to, ease(weight, easing))


# Eased Vector2 interpolation
static func get_ezd_vec2(from : Vector2, to : Vector2,
		weight : float, easing : float) -> Vector2:
	return lerp(from, to, ease(weight, easing))


# Eased Vector3 interpolation
static func get_ezd_vec3(from : Vector3, to : Vector3, 
		weight : float, easing : float) -> Vector3:
	return lerp(from, to, ease(weight, easing))


# Eased Color interpolation
static func get_ezd_color(from : Color, to : Color, 
		weight : float, easing : float) -> Color:
	return lerp(from, to, ease(weight, easing))


# Eased int interpolation
static func get_ezd_int(from : int, to : int,
		weight : float, easing : float) -> float:
	return lerp(from, to, ease(weight, easing))


# Eased angle(radians) interpolation
static func get_ezd_radians(from : float, to : float,
		weight : float, easing : float) -> float:
	return lerp_angle(from, to, ease(weight, easing))


# Eased angle(degrees) interpolation
static func get_ezd_degrees(from:float,to:float,weight:float,easing:float)->float:
	var from_rad = deg2rad(from)
	var to_rad = deg2rad(to)
	
	var x:=lerp_angle(from_rad,to_rad,ease(weight,easing))
	
	return rad2deg(x)


# Inverse eased float interpolation
static func get_inverse_ezd_float(from:float,to:float,weight:float,easing:float)->float:
	return inverse_lerp(from,to,ease(weight,easing))

