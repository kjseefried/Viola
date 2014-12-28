function printEl(var a) {
    print("%$\n", a)
}

function printList(var l) {
    foreach (el in l) {
        printEl(el)
    }
}

var l = List(Int(1), Int(2), Int(4))
printList(l)
