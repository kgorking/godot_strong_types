extends Object

##
## TODO allow nested Array types, like Array[Array[int]]
## DONE!
##
func test_run() -> void:
	# TODO deduce to Array[int]
	# DONE!
	assert([1,2,3,4].is_typed())
	assert([1,2,3,4] is Array[int])

	# TODO deduce to Array[int]
	# DONE!
	var arr1 := [0,1,2]
	assert(arr1.is_typed())
	assert(arr1 is Array[int])

	# TODO deduce to Array[int]
	# DONE!
	var x := 0
	var y := x + 1
	var arr2 = [x, y]
	assert(arr2.is_typed())
	assert([x, y] is Array[int])
	assert(arr2 is Array[int])

	# TODO deduce to Array[Array[int]]
	# DONE!
	var arr3 := [[0], [1]]
	assert(arr3.is_typed())
	assert(arr3 is Array[Array[int]])

	# TODO deduce to Array[Array[int]]
	# DONE!
	x = 5
	y = 7
	var arr4 := [[x], [y]]
	assert(arr4.is_typed())
	assert(arr4 is Array[Array[int]])

	# TODO deduce to Array[Array[int]]
	# DONE!
	var arr5 = [arr1, arr1]
	assert(arr5.is_typed())
	assert(arr5 is Array[Array[int]])

	# TODO can iterate an array of ints
	# DONE
	for i in [1,2,3,4]:
		assert(typeof(i) == TYPE_INT)
