extends Node2D

const DeduceArray = preload("res://scripts/deduce_array.gd")
const TypedArrayMap = preload("res://scripts/typed_array_map.gd")


func _init() -> void:
	DeduceArray.new().test_run()
	TypedArrayMap.new().test_run()
