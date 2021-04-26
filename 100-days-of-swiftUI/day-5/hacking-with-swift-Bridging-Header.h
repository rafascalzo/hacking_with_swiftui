//
//  Use this file to import your target's public headers that you would like to expose to Swift.
//

You’ve made it to the end of the fifth part of this series, so let’s summarize:

Functions let us re-use code without repeating ourselves.
Functions can accept parameters – just tell Swift the type of each parameter.
Functions can return values, and again you just specify what type will be sent back. Use tuples if you want to return several things.
You can use different names for parameters externally and internally, or omit the external name entirely.
Parameters can have default values, which helps you write less code when specific values are common.
Variadic functions accept zero or more of a specific parameter, and Swift converts the input to an array.
Functions can throw errors, but you must call them using try and handle errors using catch.
You can use inout to change variables inside a function, but it’s usually better to return a new value.
