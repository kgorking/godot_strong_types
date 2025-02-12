extends Node

##
## TODO allow Array.map to convert to a typed array
##
func array_size(arr: Array) -> int:
	return arr.size()

func array_sizes(arrays: Array[Array]) -> Array[int]:
	# TODO make this conversion work
	# DONE!
	return arrays.map(array_size) as Array[int]


func test_run() -> void:
	var sizes := array_sizes([[1, 2, 3, 4, 5], ["a", "b", "c"], [".", "o", "O"]])
	print("Array sizes: " + str(sizes))
