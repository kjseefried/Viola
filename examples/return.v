function i_var(int i) {
	return new(Int, Int(i))
}

var i = i_var(1)
print("%$\n", i)
delete(i)
