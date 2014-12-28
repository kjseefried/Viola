Viola
=====

Taking the load off libCello.

##Introduction

I saw https://github.com/orangeduck/libCello after it hit the top of Hackernews. It seemed like there were a number of ways to make this even more beginner friendly. I think there is a lot of potential for this library to be a standalone tool used for teaching beginning programmers and slowly weaning them towards manual memory management via a lite syntax.

Viola depends on libCello and makes the task of programming with it all that easier. It supports much of libCello right off the bat. However, classes will not work. C-style function calls should also not work, however lambdas should be fair game.

##Setup

Make and install (`make install`) libCello or export CELLO_PATH and add references to $CELLO_PATH in the GGC_BUILD variable in viola for the include and link path (-I${CELLO_PATH}/include and -L${CELLO_PATH}).

Make sure to compile the libCello library before trying to run Viola programs.

Add this directory to your path.

##Example

###list.v

    var myList = List(Int(34), Int(6), String("I'm a string."))

    foreach (element in myList) {
        print("%s\n", element)
    }

    delete(myList)

####Compile

    viola list.v

##Incompatabilities with libCello

* Viola supports optional automatic semi-colon on expressions ending in parenthesis:
** var f = 12; // requires semi-colon
** var g = (12) // semi-colon is automatically inserted
** print("%$\n", f) // semi-colon is automatically inserted
* Viola requires gcc to support nested functions.
** Attempts to use nested functions will crash on other compilers
* Viola adds a function fake type that can be used to simplify renaming functions
** function foo(var) = existingFunctionThatTakesAVar;
** Which is equivalent to function (*foo)(var) = existingFunctionThatTakesAVar;
