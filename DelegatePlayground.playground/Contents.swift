protocol RouterDelegate {
    var nameID: [String] { get set }
    func saveName(name: String, text: String)
}

protocol UsersProtocol {
    var name: String {get set}
    var age: Int {get set}
    var delegate: RouterDelegate? {get set}
    
    init(name: String, age: Int, delegate: RouterDelegate?)
}

class Router : RouterDelegate {
    var nameID: [String] = []
    
    func saveName(name: String, text: String) {
        nameID.append(name)
        nameID.append(text)
    }
}
class User: UsersProtocol {
    var name: String
    var age: Int
    var delegate: RouterDelegate?
    
    required init(name: String, age: Int, delegate: RouterDelegate?) {
        self.name = name
        self.age = age
        self.delegate = delegate
    }
    
    func sendMail(name: String, text: String) -> Bool {
        delegate?.saveName(name: name, text: text)
        return true
    }
}

let routerDelegate = Router()
let user = User(name: "Jon", age: 23, delegate: routerDelegate)

user.sendMail(name: "Sergey", text: "Hello, world")
user.sendMail(name: "Anna", text: "Hello, Anna")

routerDelegate.nameID
