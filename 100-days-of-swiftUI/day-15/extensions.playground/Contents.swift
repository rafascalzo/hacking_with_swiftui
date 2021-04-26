import UIKit

//Extensions
//Extensions let us modify Swift’s data types to add new functionality, and so on in a really clean way – our new code is indistinguishable from existing code.
//
//Let's start with an extension that adds one to an integer. Yes, I realize this is essentially just += 1, but we're starting simple. First, add this integer:

var myInt = 0
//Now add this to the playground, just beneath the import UIKit statement:

extension Int {
    func plusOne() -> Int {
        return self + 1
    }
}
//extension Int tells Swift that we want to add functionality to its Int struct. We could have used String, Array, or whatever instead, but Int is a nice easy one to start.
//
//How the extension works will become clear once you use it. Put this line just below the end of the extension:

myInt.plusOne()
//In the playground output you'll now see 0 for the first line and 1 for the second, so calling plusOne() has returned a number one higher than the number we called it on.
//
//The extension has been added to all integers, so you can even call it like this:

5.plusOne()
//When you do that, you'll see 6 in the output column.
//
//Our extension adds 1 to its input number and returns it to the caller, but doesn't modify the original value. Try typing this:

var myInt4 = 10
myInt4.plusOne()
myInt4
//Using a variable by itself tells the playground just to output its value, so in the output column you'll see 10, then 11, then 10 again. This is the original value, the return from the plusOne() method, and the original, unchanged value.
//
//To push things a little further, let's modify the plusOne() method so that it doesn't return anything, instead modifying the instance itself – i.e., the input integer.
//
//To make that happen, you might think we need to do something like this:

extension Int {
    func plusOne() {
        self += 1
    }
}
//That removes the return value because we aren't returning anything now, and it uses the += operator to add one to self. But this won't work, and in fact Xcode will give you a wonderfully indecipherable error message: "Left side of mutating operator isn't mutable: 'self' is immutable"
//
//What Xcode really means is that it Swift doesn't let you modify self inside an extension by default. The reason is that we could call plusOne() using 5.plusOne(), and clearly you can't modify the number 5 to mean something else.
//
//So, Swift forces you to declare the method mutating, meaning that it will change its input. Change your extension to this:

extension Int {
    mutating func plusOne1() {
        self += 1
    }
}
//…and now the error message will go away. Once you have declared a method as being mutating, Swift knows it will change values so it won't let you use it with constants. For example:

var myInt2 = 10
myInt2.plusOne1()

let otherInt = 10
otherInt.plusOne1()
//The first integer will be modified correctly, but the second will fail because Swift won't let you modify constants.
//
//It's extremely common for developers to use extensions to add functionality to things. In some ways, extensions are similar to subclasses, so why use extensions at all?
//
//The main reason is extensibility: extensions work across all data types, and they don't conflict when you have more than one. That is, we could make a Dog subclass that adds bark(), but what if we find some open source code that contains a doTricks() method? We would have to copy and paste it in to our subclass, or perhaps even subclass again.
//
//With extensions you can have ten different pieces of functionality in ten different files – they can all modify the same type directly, and you don't need to subclass anything. A common naming scheme for naming your extension files is Type+Modifier.swift, for example String+RandomLetter.swift.
//
//If you find yourself trimming whitespace off strings frequently, you'll probably get tired of using this monstrosity:

str = str.trimmingCharacters(in: .whitespacesAndNewlines)
//…so why not just make an extension like this:

extension String {
    mutating func trim() {
        self = trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
//You can extend as much as you want, although it's good practice to keep differing functionality separated into individual files.
