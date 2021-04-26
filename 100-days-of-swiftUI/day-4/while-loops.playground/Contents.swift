import UIKit

//A second way of writing loops is using while: give it a condition to check, and its loop code will go around and around until the condition fails.
//
//For example, we could use a while loop to simulate a child counting in a game of hide and seek: we start at one, count up to and including 20 while printing each number out, then after the loop print “Ready or not”.
//
//Here’s how that looks in Swift:

var number = 1

while number <= 200 {
    print(number)
    number += 1
}

print("Ready or not, here I come!")
