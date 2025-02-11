extends Node2D

const NestedTypesArray = preload("res://typed_array.gd")
const ArrayMap = preload("res://array_map.gd")

func _init() -> void:
	var array_test := NestedTypesArray.new()
	array_test.test_run()
	
	var array_map_test := ArrayMap.new()
	array_map_test.test_run()
