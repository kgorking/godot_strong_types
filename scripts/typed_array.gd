extends Object

##
## TODO allow nested Array types, like Array[Array[int]]
##
func test_a_i(d: Array[int]): print(d)
func test_aa_i(d: Array[Array[int]]): print(d)

func test_run() -> void:
	# Classic way should still work
	# Both have type `Array[int]`, one explicit, one implicit
	var arr_classic : Array[int] = [-1, -2, -3]
	var arr_untyped = [-4, -5, -6]
	test_a_i(arr_classic)
	test_a_i(arr_untyped)
	var arr_variant1: Array = arr_classic
	var arr_variant2: Array = arr_untyped
	var arr_cast = arr_untyped as Array[int]
	arr_classic = arr_untyped
	arr_untyped = arr_classic

	# Can not deduce element type, so deduces to Array
	var arr_x := [0,"1"]
	#test_a_i(arr_x)

	# DONE
	test_a_i([6, 12, 24])

	# DONE arr1 should deduce to Array[int]
	var arr1 := [0,1,2]
	test_a_i(arr1)

	# DONE arr2 should deduce to Array[int]
	var x := 0
	var y := x + 1
	var arr2 := [x, y]
	test_a_i(arr2)

	# DONE should deduce to Array[Array[int]]
	var arr3 := [[0], [1]]
	test_aa_i(arr3)

	# DONE should deduce to Array[Array[int]]
	x = 5
	y = 7
	var arr4 := [[x], [y]]
	test_aa_i(arr4)

	# DONE should deduce to Array[Array[int]]
	var arr5 := [arr2, arr2]
	test_aa_i(arr5)
