//: [Previous](@previous)
/*:
 # More on Strings 
 You'll use strings a lot, so let's dig into more detail
 
 ### String Literals
 Strings that don't change - a fixed sequence of characters*/
 let aStringThatWillNotChange = "All work and no play makes Cameron a dull boy."
//: ### Variable Strings
// The plus operator will concatenate strings
var name = ""

let firstName = "John"
let lastName = "Doe"

name = firstName + lastName

// You can also use the += operator

name = firstName
name += " "
name += lastName
//: ### String Interpolation
//: Using a string literal to format a string
name = "First Name: \(firstName), Last Name: \(lastName)"
print(name)

var dinnerCost = 11.43
var salesTax: Double = 0.09

print("My coffee cost an extra $\(dinnerCost * (1 + salesTax))")
//: ### Length
//: A string is a collection of individual characters and you can find the length of a string by getting the count of the characters that make up the string
var aLongString = "You will soon love Swift"
var aLongStringLength = aLongString.count
//:### Comparing Strings
//: Check for equality using an if statement and an operator
var theSameLongString = "You will soon love Swift"

// Check to see if two strings are equal using the "==" operator
if aLongString == theSameLongString {
    print("The strings are the same")
} else {
    print("The strings are not the same")
}

// Or check the reverse using the "!=" operator
if aLongString != theSameLongString {
    print("The strings are not the same")
} else {
    print("The strings are the same")
}
/*:
 ## Your Turn
 **Try It!** Given the following variables, print a string that says "Louisville, KY" using the '+' operator
 */
var city = "Louisville"
var state = "KY"

// Go!
print("\(city + ", " + state)")

print("The answer is: \(city + ", " + state)")
//: **Try It!** Print out the number of **characters** in the given string
var theString = "How many characters are in this string?"

// Go!
print(theString.count)
//: [Next](@next)
