function operate(var op) {
	function sum(var a, var b) {
		return new(Int, Int(as_long(cast(a, Int)) + as_long(cast(b, Int))))
	}

	function sub(var a, var b) {
		return new(Int, Int(as_long(cast(a, Int)) - as_long(cast(b, Int))))
	}

	if (op == String("-")) return sub;
	return sum;
}

function formatPrint(var i) {
	print("%$\n", i)
}

function first(var, var) = operate(String("-"))
function second(var, var) = operate(String("+"))

var i = second(Int(1), Int(2))
formatPrint(i)

delete(i)
