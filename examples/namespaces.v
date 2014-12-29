namespace std (
	function (*_print)(var object)
)

namespace std2 (
	function (*_print)(var object)
)

function _print(var object) {
	printf("Dud.\n")
}

function _print2(var object) {
	printf("Dud2.\n")
}

std._print = _print;
std2._print = _print2;

std._print(Int(2))
std2._print(Int(3))
