import UIKit

//We’ve used lots of strings so far, and it turns out they are structs – they have their own methods and properties we can use to query and manipulate the string.
//
//First, let’s create a test string:

let string = "Do or do not, there is no try."
//You can read the number of characters in a string using its count property:
//
print(string.count)
//They have a hasPrefix() method that returns true if the string starts with specific letters:

print(string.hasPrefix("Do"))
//You can uppercase a string by calling its uppercased() method:

print(string.uppercased())
//And you can even have Swift sort the letters of the string into an array:

print(string.sorted())
//Strings have lots more properties and methods – try typing string. to bring up Xcode’s code completion options.

let rafael = "Rafael Varanelli Scalzo Moraes"

print(rafael.components(separatedBy: " "))

print(rafael.distance(from: rafael.startIndex, to: rafael.endIndex))

print(rafael.localizedCapitalized)

let str = NSLocalizedString(rafael, tableName: nil, bundle: .main, value: rafael, comment: "")

print(rafael.sorted())

print(rafael.trimmingCharacters(in: .whitespaces).sorted())

let index = rafael.firstIndex(of: "S")!

print(rafael.distance(from: rafael.startIndex, to: index)) 
