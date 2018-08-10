protocol OneProtocol {
    var name: String { get set }
    var age: String { get set }
    
    //mutating func hello(text:String)
    
}
//протоколы могут наследоваться

struct Parents : OneProtocol {
    var name: String
    var age: String
}

struct Kids : OneProtocol {
    var name: String
    var age: String
}

struct Cat : OneProtocol {
    var name: String
    var age: String
}
var parent1 = Parents(name: "Mamy", age: "30")
var parent2 = Parents(name: "Father", age: "30")
var kids = Kids(name: "Child", age: "5")
var cat = Cat(name: "cat", age: "1")

var array: [Any] = [parent1, parent2, kids, cat]
for val in array {
    if let parent = val as? Parents {
        print(parent)
    } else if let kid = val as? Kids {
            print(kid)
    }
    
}
