#include <Cello.h>
int main(int argc, char** argv) {
var int_item = $(Int, 5);
var float_item = $(Real, 2.4);
var string_item = $(String, "Hello");

var items = new(List, int_item, float_item, string_item);

foreach(item in items) {
    var type = type_of(item);
    print("Object %$ has type %$\n", item, type);
}

delete(items);
}
