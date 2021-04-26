//
//  extensions.swift
//  hacking-with-swift
//
//  Created by rafaelviewcontroller on 10/3/19.
//  Copyright © 2019 rafaelviewcontroller. All rights reserved.
//

//Extensions allow you to add methods to existing types, to make them do things they weren’t originally designed to do.
//
//For example, we could add an extension to the Int type so that it has a squared() method that returns the current number multiplied by itself:

extension Int {
    func squared() -> Int {
        return self * self
    }
}
//To try that out, just create an integer and you’ll see it now has a squared() method:

let number = 8
number.squared()
//Swift doesn’t let you add stored properties in extensions, so you must use computed properties instead. For example, we could add a new isEven computed property to integers that returns true if it holds an even number:

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}
