Viola
=====

Taking the load off libCello.

##Introduction

I saw libCello after it hit the top of Hackernews. It seemed like there were a number of ways to make this even more beginner friendly. I think there is a lot of potential for this library to be a standalone tool used for teaching beginning programmers and slowly weaning them towards manual memory management via a lite syntax.

##Setup

Export CELLO_PATH set to the absolute path of your libCello library.

Make sure to compile the libCello library before trying to run Viola programs.

Add this directory to your path.

##Examples

###list.v

    var myList = List(Int(34), Int(6), String("I'm a string."));

    foreach (element in myList) {
        print("%s\n", element);
    }

    delete(myList);

####Compile

    viola list.v
