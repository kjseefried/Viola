typedef struct {
	var legs;
	var color;
} Animal;

function printAnimal(Animal animal) {
	print("I have %$ legs and am %$.\n", animal.legs, animal.color)
}

Animal cat;
cat.legs = Int(4)
cat.color = String("Red")

printAnimal(cat)
