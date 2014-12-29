Viola
=====

Taking the load off libCello - a work in progress.

##Introduction

I saw https://github.com/orangeduck/libCello after it hit the top of Hackernews. It seemed like there were a number of ways to make this even more beginner friendly. I think there is a lot of potential for this library to be a standalone tool used for teaching beginning programmers and slowly weaning them towards manual memory management via a lite syntax.

Viola depends on libCello to provide the backbone. The more interesting parts of Viola revolve around very simple (completely context-free) string replacements and a somewhat simpler/more-friendly API that sits on top of libCello. Furthermore, Viola is intended more as a "standalone" language for teaching.

I haven't really had time to make documentation, but I wrote a number of examples in examples/ to demonstrate some of the cooler features in Viola. This is obviously a work in progress. Please feel free to make any suggestions or give any guidance!

##Setup

Make and install (`make install`) libCello or add references (-I, -L) to the GCC_BUILD variable in ./viola.

Add this directory to your path to access `viola`.

##Example

###example.v

    var myList = Ints(Int(1), Int(2), Int(3))

    foreach (element in myList) {
        print("%$\n", element)
    }

    delete(myList)

####Compile (and Run)

    viola example.v

#####Note

The built .c and binary files are stored in build/.

###More

Check out examples/ for more.

##Features
* Semi-optional semi-colons
    * Any expression ending in a right parenthesis can optionally omit an ending semi-colon:

    var i = $(Int, 3); // needs semi-colon because line ends with comment not )
    show(i)
    int f = 3; // must have semi-colon
    // doesn't need semi-colon
    int g = (4)

* Abbreviated access to creating objects

    // $(Int, 2)
    var i = Int(2)
    // $(String, "foo") and so on
    var s = String("foo"
    // Also works for lists of objects, heap memory is allocated here though
    var l = List(Int(2), Int(4))
    delete(l); // so don't forget to deallocate the memory.

* Functions
    * "function" is just a mask for "var", but it is also used to simplify passing functions:

    function add(var a, var b) {return sum(a, b)}
    function addRenamed(var, var) = add; // same as "function (*addRenamed)(var, var) = add;"

    * functions can be nested
* Namespacing
    * Namespaces can be declared and all members must be declared at the time too.

    namespace std (
	function (*_print)(var)
    )

    function _print(var object) { show(object); } // needs semi-colon because the line does not end with )
    std._print = _print;

    std._print(Int(9))

* Import
    * Viola files can be imported

    import "local_file.v" // lets so it contains the above std namespace

    std._print(String("I can import and use namespaces!"))
