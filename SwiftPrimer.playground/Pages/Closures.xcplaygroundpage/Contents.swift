//: [Previous](@previous)

/*:
 # Closures
 
 Ok, you've learned about functions, and functions within classes and structures.  Now we are going to talk about closures.  These are really just functions without a name.
 
 They are called closures because they have the ability to see the variables and constants in the closure's own scope, meaning they can access variables and constants that are around the context of the closure.
 
 ### How on earth should they be declared if they don't have a name?
 
 There are a lot of different ways to access a closure, but for simplicity let's start with the most basic...
 */
// Here's a variable that declares a closure
var addClosure: (Int, Int) -> Int

// Note that that is just declaration.  To instantiate the closure you have to define it.
addClosure = {
    (num1: Int, num2: Int) ->Int in
    return num1 + num2
}

// Now you can call it
var result: Int = addClosure(3, 5)
//: ### Closures can look confusing because of the shorthand syntax, but once you see them, it becomes more understandable :)
// From above, losing the return statement
addClosure = { (num1: Int, num2: Int) ->Int in
    num1 + num2
}

// Then you can use type inference to make it even shorter
addClosure = { (num1, num2) in
    num1 + num2
}

// Now you can call it again with the new definition
result = addClosure(5,4)

// Then you can go one step further!  Just get rid of the parameter names in the definition
addClosure = { $0 + $1 }

result = addClosure(9,10)
//: ### Now watch this!  With a typealias you can have multiple methods of the same closure type.

// Given addClosure having a signature of (Int, Int) -> Int
typealias MathClosure = (Int, Int) -> Int

// Now we can declare a few closures with the same signature easily
var additionClosure: MathClosure = {$0 + $1}
var multiplyClosure: MathClosure = {$0 * $1}
var subtractClosure: MathClosure = {$0 - $1}

// So we have three different methods for doing math operations.  If we take that method, we can create a super generic method called...
func doMathyStuff(num1: Int, num2: Int, operation: MathClosure) -> Int{
    let result: Int = operation(num1, num2)
    return result
}

var addResult = doMathyStuff(num1: 4, num2: 4, operation: additionClosure)
var multResult = doMathyStuff(num1: 4, num2: 4, operation: multiplyClosure)

//sorted
let names = ["xx", "fwfds", "sdfsdf", "trbevfe"]
print(names.sorted())
print(names.sorted{$0.count > $1.count})

//filter
var prices = [1.5, 10, 4.99, 2.3, 8.19]
let largerPrices = prices.filter{return $0 > 5}
print(largerPrices)
//: [Next](@next)
