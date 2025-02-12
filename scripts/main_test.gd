extends Node2D

const TypedArray = preload("res://scripts/typed_array.gd")
const ArrayMap = preload("res://scripts/array_map.gd")

func _init() -> void:
	var array_test := TypedArray.new()
	array_test.test_run()
	
	var array_map_test := ArrayMap.new()
	array_map_test.test_run()
