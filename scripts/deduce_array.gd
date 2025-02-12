##
## TODO Improve array type deduction, including nested types
## DONE!
##
func test_run() -> void:
	# TODO literal array of ints deduce to Array[int]
	# DONE!
	assert([1,2,3,4].is_typed())
	assert(typeof([1,2,3,4][0]) == TYPE_INT)
	assert([1,2,3,4] is Array[int])

	var arr1 := [0,1,2]
	assert(arr1.is_typed())
	assert(typeof(arr1[0]) == TYPE_INT)
	assert(arr1 is Array[int])
	print(arr1)

	# TODO array of variable ints deduce to Array[int]
	# DONE!
	var x := 0
	var y := x + 1
	var arr2 := [x, y]
	assert([x, y].is_typed())
	assert([x, y] is Array[int])
	assert(arr2.is_typed())
	assert(typeof(arr2[0]) == TYPE_INT)
	assert(arr2 is Array[int])

	# TODO array of literal Array[int] deduce to Array[Array[int]]
	# DONE!
	var arr3 := [[0], [1]]
	assert(arr3.is_typed())
	assert(arr3 is Array[Array[int]])

	# TODO array of variable Array[int] deduce to Array[Array[int]]
	# DONE!
	x = 5
	y = 7
	var arr4 := [[x], [y]]
	assert(arr4.is_typed())
	assert(arr4 is Array[Array[int]])

	# TODO array of int-arrays deduce to Array[Array[int]]
	# DONE!
	var arr5 := [arr1, arr2]
	arr5.fill(arr3)
	#arr5.append(arr3)
	#arr5.append_array(arr3)
	assert(arr5.is_typed())
	assert(arr5 is Array[Array[int]])
	print(arr5)

	# TODO iterate an array of ints
	# DONE
	for i in [1,2,3,4]:
		assert(typeof(i) == TYPE_INT)
