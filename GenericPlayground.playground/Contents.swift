var stringArray = ["Hello", "playground"]
var intArray = [1, 4, 5, 6]
var doubleArray = [1.2, 1.6, 6.7, 8.9]

func printFromArray<T> (a: [T]) {
    for el in a {
        print(el)
    }
}

printFromArray(a: stringArray)
printFromArray(a: intArray)
printFromArray(a: doubleArray)

////////////////////////////////////////
func doNothing<T>(x: T) -> T {
    return x
}

doNothing(x: 1)
doNothing(x: 333.4)
doNothing(x: "ASDAD")

////////////////////////////////////////

var emptyArray = [String]()

struct GenericArray<T> {
    var items = [T]()
    mutating func push(item: T) {
        items.append(item)
    }
}

var myFriendsList = ["friend1","friend2","friend3"]

var arrays = GenericArray(items: myFriendsList)
arrays.push(item: "friend4")

