//: [Previous](@previous)
/*:
# Constants and Variables
A name to that is attached to types of values.  There are two types:
* Constants - Values that can be set, but not changed
* Variables - Names for values that can change
## Constants
Used to name values that don't change.  For example:
 ```
 let hoursInDay = 24
 let daysIn2016 = 365
*/
// How many hours are in 2016?
let daysInYear = 365
let hoursInDay = 24
let hoursInYear = hoursInDay * daysInYear
//: **Try It!** Given the two constants miles and time elapsed, calculate the average miles per hour on the trip.
let milesTraveled = 60
let timeElapsed = 2 // In hours

// Go!
let mph = milesTraveled/timeElapsed

print("Mile per hour: \(mph)")
/*: 
 ## Variables
 Used to name values that do change.  For example:
 ```
var leapYear2018 = daysInYear + 1
 */
var leapYear2018: Int = daysInYear + 1
//: ### Other Variations
//: If you'd like, you can delare several variables or constants in a single line
let one = 1, two = 2, three = 3
var x = 0, y = 0, z = 0
/*:
 ## Your Turn
 **Try It!** Given two variables x and y, add them together and print the result
*/
var a = 5
var b = 7

// Go!
print("The sum of a and b are: \(a + b)")
//: [Next](@next)
