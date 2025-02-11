extends Node

##
## TODO allow Array.map (and similar functions) to convert to a typed array
##

static func array_size(arr: Array) -> int:
	return arr.size()


static func array_sizes(arrays: Array[Array]) -> Array[int]:
	# TODO make this conversion work like a `reinterpret_cast<>`
	# TODO it should not make a copy, just change the type
	var untyped = arrays.map(array_size)
	untyped as Array[int]
	var x := untyped as Array[int]
	return x


func test_run() -> void:
	var sizes := array_sizes([[1, 2, 3, 4, 5], ["a", "b", "c"], [".", "o", "O"]])
	print(sizes)
