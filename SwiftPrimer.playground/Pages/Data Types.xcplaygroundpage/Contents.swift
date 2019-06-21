//: [Previous](@previous)
/*:
 # Data Types
 Constants and Variables have different types that are declared or inferred

 ## Inferred vs. Declared Types
If you don't explicitly say what the type is, the compiler will try to guess.  That's inference.
 ```
 let hoursInDay = 24
 let daysIn2016 = 365
 ```
 Note that we aren't telling the compiler that the two constants above are numbers.  So it figures that out on it's own.
 
 ### But you could explicitly say....
*/
//:
let hoursInOneDay: Int = 24    // Type is Int, or integer
let daysIn2016: Int = 365
//: ### And if you contradict yourself....
//var daysIn2016Wrong: Int = 365.51 // <-- This is wrong, and the compiler complains

var daysIn2016Right: Int = Int(365.51) // <-- This is right, because we've forced 365.51 to become an Int instead of a Double
/*:
 ## Summary of Data Types
 You have seen Double and Int so far...
 ### Common Data Types
 * Int - A whole number without a fractional or decimal component, like 3
 * Double - A decimal number, like 3.14159
 * Bool - Boolean representing true or false
 * String - A sequence of characters
*/
var aDouble = 3.14
var aBoolean = true
var aString = "String"
var anInt = 45
/*: 
 ### Less common Data Types
 * Float - Another decimal, but smaller and less precise than Double
 * UInt - Unsigned Int
 * Integer Literals - Different ways of representing integer values
 * Decimal Literals - Different ways of representing decimal values
*/
var float: Float = 3.14
var unsignedInt: UInt = 3

// Different Int Types
let decimalInt = 17
let binaryInt = 0b10001
let octalInt = 0o21
let hexInt = 0x11
/*:
 ## Your Turn
 **Try It!** Declare two constants and solve 12 - 4 = ?
 */
// Go!
let num1 = 12
let num2 = 4
let answer = num1 - num2
//: **Try It!** Determine the number of seconds in a day using the following constants
let secInMin: Int = 60
let minInHour: Int = 60
let hoursInDay: Int = 24

// Go!
var secInDay = secInMin * minInHour * hoursInDay
//: [Next](@next)
