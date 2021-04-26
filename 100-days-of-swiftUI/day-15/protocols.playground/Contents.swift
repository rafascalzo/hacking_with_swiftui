import UIKit

//Protocols
//Protocols are effectively contracts in Swift: they define a set of methods and properties that a type must implement if it says it conforms to the protocol. This contract gives us the flexibility to use different types to solve the same problem – we don’t get whether a ThingA or a ThingB is being used, as long as they both conform to the Thing protocol.
//
//As an example, an Employee protocol might look like this:

protocol Employee {
    var name: String { get set }
    var jobTitle: String { get set }
    func doWork()
}
//There are three important things in there.
//
//First, both the properties have { get set } after them. This means that conforming types must make them both gettable (readable) and settable (writeable), which in turn means if a type says it is compatible with the Employee protocol it must make those two properties variables rather than constants.
//
//Second, doWork() has no code inside it. Protocols are contracts defining how something ought to be able to behave, and don’t provide implementations of those behaviors.
//
//Third, that protocol isn’t a type, which means we can’t create instances of it. But we can create classes and structs that conform to it, like this:

struct Executive: Employee {
    var name = "Steve Jobs"
    var jobTitle = "CEO"
    
    func doWork() {
        print("I'm strategizing!")
    }
}

struct Manager: Employee {
    var name = "Maurice Moss"
    var jobTitle = "Head of IT"
    
    func doWork() {
        print("I'm turning it off and on again.")
    }
}
//Now that we have a protocol and two types that conform to it, we can try using it:

let staff: [Employee] = [Executive(), Manager()]

for person in staff {
    person.doWork()
}
//Because both types conform to Employee – they implement the properties and methods of that protocol – we can create an employee array and use the objects inside that array without know what their actual type is.
