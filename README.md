Viola
=====

Taking the load off libCello - a work in progress.

##Introduction

I saw https://github.com/orangeduck/libCello after it hit the top of Hackernews. It seemed like there were a number of ways to make this even more beginner friendly. I think there is a lot of potential for this library to be a standalone tool used for teaching beginning programmers and slowly weaning them towards manual memory management via a lite syntax.

Viola depends on libCello and makes the task of programming with it all that easier. It supports much of libCello right off the bat. However, classes may not work - but I'm not a big fan of the complex syntax anyway.

Viola is a simple wrapper for libCello that allows the new programmers to go through a little less unnecessary "junk" to get their programs running. Nested functions in GNU C allow some neat tricks that couldn't be accomplished without picking up and relocating slabs of declarations. Most of Viola's simplifications rely on very simple string manipulation. It compiles to C and viola will run it automatically. Again, the intent is to make Viola very easy for new users to pick up and use hassle free. Unfortunately, the lack of operator overloading in C is an issue in terms of a truly simple programming API. 

I haven't really had time to make documentation, but I wrote a number of examples in examples/ to demonstrate some of the cooler features in Viola. This is obviously a work in progress. Please feel free to make any suggestions or give any guidance!

##Setup

Make and install (`make install`) libCello or export CELLO_PATH and add references to $CELLO_PATH in the GGC_BUILD variable in viola for the include and link path (-I${CELLO_PATH}/include and -L${CELLO_PATH}).

Make sure to compile the libCello library before trying to run Viola programs.

Add this directory to your path.

##Example

###example.v

    var myList = Ints(Int(1), Int(2), Int(3))

    foreach (element in myList) {
        print("%s\n", element)
    }

    delete(myList)

####Compile (and Run)

    viola example.v

#####Note

The built .c and binary files are stored in build/.

###More

Check out examples/ for more.

##Incompatabilities with libCello

* Viola supports optional automatic semi-colon on expressions ending in parenthesis:
	* var f = 12; // requires semi-colon
	* var g = (12) // semi-colon is automatically inserted
	* print("%$\n", f) // semi-colon is automatically inserted
* Viola requires gcc to support nested functions.
	* Attempts to use nested functions will crash on other compilers
* Viola adds a function fake type that can be used to simplify renaming functions
	* function foo(var) = existingFunctionThatTakesAVar;
	* Which is equivalent to function (*foo)(var) = existingFunctionThatTakesAVar;
