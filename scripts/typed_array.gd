extends Object

##
## TODO allow nested Array types, like Array[Array[int]]
##
func test_a_i(d: Array[int]): print(d)
func test_aa_i(d: Array[Array[int]]): print(d)

func test_run() -> void:
	# TODO deduce to Array[int]
	# DONE!
	test_a_i([6, 12, 24])

	# TODO arr1 should deduce to Array[int]
	# DONE!
	var arr1 := [0,1,2]
	test_a_i(arr1)

	# TODO arr2 should deduce to Array[int]
	# DONE!
	var x := 0
	var y := x + 1
	var arr2 := [x, y]
	test_a_i(arr2)

	# TODO should deduce to Array[Array[int]]
	# DONE!
	var arr3 := [[0], [1]]
	test_aa_i(arr3)

	# TODO should deduce to Array[Array[int]]
	# DONE!
	x = 5
	y = 7
	var arr4 := [[x], [y]]
	test_aa_i(arr4)

	# TODO should deduce to Array[Array[int]]
	# DONE!
	var arr5 := [arr1, arr2]
	test_aa_i(arr5)
