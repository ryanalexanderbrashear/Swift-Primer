
//: [Previous](@previous)
/*:
 # Optionals
 ### A fast aside into the wonderful world of optionals
 
 Optional datatypes provide a way to define data when nothing is there
 
 Swift is a type safe language and as such it has the sticky requirement that all variables and constants must be very clear about what is in them.  Not just the type, but if it is expected if the value will be nil or not.
 
 If you declare a variable or a constant, it has to have a value, Swift enforces that.  An Optional Type is a type that may or may not have a value.
 
 */
// You can declare optionals of any type by adding a '?' after the data type.
var x: String?
var y: Int?
var z: Double?
/*:
 ### Why would we want to do this?
 
 You will use these when you aren't sure if a variable or constant will contain a value.
 
 Say for example that you are gathering profile information on a form.  You may want to provide the option of not requiring that all fields are filled in*/
var optionalAge: Int?
var age: Int
/*:
 Then how is this handled?  With old languages, a special variable meaning "undefined" was used, and in Objective-C that value was 'nil'.
 
 But the issue that one can run into with a nil value is sometimes, a variable that is unexpectedly set to nil can generate a run time error, which generates a crash.  However, a type-safe language like Swift uses optionals to turn run time errors into compile time errors.
 For example:*/
print("My age is \(String(describing: optionalAge))")
//print("My age is \(age)")
/*:
 ### Force Unwrapping
 If you have an opitonal, and you need to unwrap it so it can we the specific value it represents, then you use the ! operator.  For example to make a String? a String
 */
var nameOfPerson: String
var myName: String? = "Izaak"

nameOfPerson = myName!
/*:
 ### If let
 if let sets a variable if an optional is populated, and if so executes one branch of the if statment
 
 */
var name: String = "Floyd"
var nickname: String? = "Joe"

if let nick = nickname {
    print(nick)
} else {
    print(name)
}
/*:
### Nil-coalescing operator - ??
There is different syntax to safely avoid force unwrapping and return the intented value

*/
// This is handy....
// Prints nickname if it has value or name if not
print(nickname ?? name)
/*:
 ### Optional Chaining
 Optional Chaining is allows a method to return an operator and short circuit a series of method calls to avoid a runtime error.  For example:
 */
// An example of optional chaining
// The magic is in the '?'

// If nickname has value, get the lowercased version of the nickname string and print it out
if let nick = nickname?.lowercased() {
    print(nick)
}
/*:
 ### Guard
 Guard is a newer way to make sure that value is populated before continuing.  Taking the example above...
 */
//guard let nick = nickname else {
//    print("Failure!")
//}
/*:
 ## Your Turn
 **Try It!**\
 Which of these declarations are valid?
 
 ```
 var title: String? = "Neuromancer"
 var author: String = "William Gibson"
 var copyrightDate: Date = nil
 var publishDate: Date
 ```
 */
import Foundation

// Go!
var title: String? = "Neuromancer"
var author: String = "William Gibson"
var publishDate: Date
/*:
 **Try It!**\
 Given a favorite color that is defined as an optional string (String?) print out its value.  But only print the color if the optional is set to a value.
 */
// Go!
let color: String?

color = "blue"

if let myColor = color {
    print(myColor)
}
/*:
 **Try It!**\
 Dead simple Roman Numeral Lookup
 
 * Create a function called "romanNumeralLookup".
 * As params, it will input an Int and return a String (not an optional String).
 * If you pass in a number 1 through 10, it will return a value
 * If you pass any other number, it will respond with a string of "Value not Available"
 
 * Hint - Use a dictionary to hold a roman numeral lookup with values from 1 to 10
 */
// Go!
func romanNumeralLookup(input: Int) -> String {
    switch input {
    case 1:
        return "I"
    case 2:
        return "II"
    case 3:
        return "III"
    case 4:
        return "IV"
    case 5:
        return "V"
    case 6:
        return "VI"
    case 7:
        return "VII"
    case 8:
        return "VIII"
    case 9:
        return "IX"
    case 10:
        return "X"
    default:
        return "Value not Available"
    }
}

print(romanNumeralLookup(input: 5))
/*:
 **Try It!**\
 Create a method that will divide a number by another, but will only return a result if it divides evenly
 
 */
// Go!
func divideNumbers(divisor: Int, dividend: Int) -> String {
    if divisor % dividend == 0 {
        return "Divided evenly with a result of \(divisor/dividend)"
    } else {
        return "Did not divide evenly"
    }
}

print(divideNumbers(divisor: 10, dividend: 2))
/*:
 **Try It!**\
 Now take the last exercise and refactor it to use the nil coalescing operator rather than an if statement.  If a set of numbers divides evenly, then return that value.  Otherwise return zero.
 */
// Go!
func divideNumbersRefactor(divisor: Int, dividend: Int) -> Int {
    var quotient: Int?
    
    if divisor % dividend == 0 {
        quotient = divisor / dividend
    }
    
    return quotient ?? 0
}

divideNumbersRefactor(divisor: 6, dividend: 4)
//: [Next](@next)
