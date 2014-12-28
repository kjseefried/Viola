function printList(var l) {
	foreach(el in l) {
		print("%$\n", el)
	}
}

var intList = Ints(Int(1), Int(2), Int(3))
var stringList = Strings(String("hello"), String("world!"))
var charList = Chars(Char('a'), Char('b'), Char('c'))
var realList = Reals(Real(1.0), Real(2.0), Real(3.0))

printList(intList)
printList(stringList)
printList(charList)
printList(realList)
