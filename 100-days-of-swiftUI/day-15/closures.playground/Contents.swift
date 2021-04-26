import UIKit

//You've met integers, strings, doubles, floats, Booleans, arrays, dictionaries, structs and classes so far, but there's another type of data that is used extensively in Swift, and it's called a closure. These are complicated, but they are so powerful and expressive that they are used pervasively in Cocoa Touch, so you won't get very far without understanding them.
//
//A closure can be thought of as a variable that holds code. So, where an integer holds 0 or 500, a closure holds lines of Swift code. Closures also capture the environment where they are created, which means they take a copy of the values that are used inside them.
//
//You never need to design your own closures so don't be afraid if you find the following quite complicated. However, both Cocoa and Cocoa Touch will often ask you to write closures to match their needs, so you at least need to know how they work. Let's take a Cocoa Touch example first:

let vw = UIView()

UIView.animate(withDuration: 0.5, animations: {
    vw.alpha = 0
})
//UIView is an iOS data type in UIKit that represents the most basic kind of user interface container. Don't worry about what it does for now, all that matters is that it's the basic user interface component. UIView has a method called animate() and it lets you change the way your interface looks using animation – you describe what's changing and over how many seconds, and Cocoa Touch does the rest.
//
//The animate() method takes two parameters in that code: the number of seconds to animate over, and a closure containing the code to be executed as part of the animation. I've specified half a second as the first parameter, and for the second I've asked UIKit to adjust the view's alpha (that's opacity) to 0, which means "completely transparent."
//
//This method needs to use a closure because UIKit has to do all sorts of work to prepare for the animation to begin, so what happens is that UIKit takes a copy of the code inside the braces (that's our closure), stores it away, does all its prep work, then runs our code when it's ready. This wouldn't be possible if we just run our code directly.
//
//    The above code also shows how closures capture their environment: I declared the vw constant outside of the closure, then used it inside. Swift detects this, and makes that data available inside the closure too.
//
//    Swift's system of automatically capturing a closure's environment is very helpful, but can occasionally trip you up: if object A stores a closure as a property, and that property also references object A, you have something called a strong reference cycle and you'll have unhappy users. This is a substantially more advanced topic than you need to know right now, so don't worry too much about it just yet.
//
//    Trailing closures
//    As closures are used so frequently, Swift can apply a little syntactic sugar to make your code easier to read. The rule is this: if the last parameter to a method takes a closure, you can eliminate that parameter and instead provide it as a block of code inside braces. For example, we could convert the previous code to this:

    let vw1 = UIView()
    
    UIView.animate(withDuration: 0.5) {
    vw1.alpha = 0
    }
//    It does make your code shorter and easier to read, so this syntax form – known as trailing closure syntax – is preferred.
