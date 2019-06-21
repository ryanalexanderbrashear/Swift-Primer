//: [Previous](@previous)
/*:
 # Operators - Just the basics
 * Arithmetic - Doing Math
 * Comparison - Comparing values and equality (true / false)
 * Logical - Comparing equality (and / or)
 * A Few More
## Arithmetic
 * \+
 * \-
 * \* 
 * /
 * %
*/
var a = 9, b = 3, c = 10

// The plus operator
var plus = a + b

// The subtraction operator
var minus = a - b

// The multiplication operator
var mult = b * c
//: A side note on casting.  Casting is something one needs to do explicitly in Swift when you intend to convert one type into another.  One place this happens is during division.

// Say you divide two integers, the result will often have a remainder, which results in a decimal value.  If you don't specify, you'll get a Integer with the decimal truncated.

// The division operator
var divide: Int = c / b

var divideAgain: Double = Double(c)/Double(b)


// The remainder (modulo) operator

var remainder = c % b
/*:
 ## Comparison
 These all evaluate to true or false
 * \<
 * \>
 * \==
 * \!=
 * \>=
 * \<=
*/
// Less than
if 3 < 5 {
    print("Yep")
}

if 3 > 1 {
    print("Yes")
}

if "Cameron" == "Cameron" {
    print("Yes I equal myself")
}

if "Izaak" != "Dave" {
    print("Izaak does not equal Dave")
}

if 3 >= 3 {
    print("3 is greater than or equal to 3")
}

if 3 <= 3 {
    print("3 is less than or equal to 3")
}
/*:
 ## Range Operators
 These operators are used to represent a sequence of numbers
 * ... - A closed range
 * ..< - A half open range
*/
// A closed range (0,1,2,3,4,5)
let closed = 0...5

// A half open range (0,1,2,3,4)
let halfOpen = 0..<5
/*:
 ## Logical
 These chain true false values together.  These three are the essentials
 * && - and
 * || - or
 * ! - not
 */
// And combinations
true && true
true && false
false && true
false && false

if 1 < 2 && 2 < 3 {
    print("true")
} else {
    // this will not happen
}

// Or combinations
true || true
true || false
false || true
false || false
/*: 
 > We'll cover the **OR** combinations in more detail in the Control Flow section
*/
// Not
!true
!false
/*:
 ## Your Turn
 **Try It!** Given x  = 12 and y = 5.3, divide x/y
 */
let x = 12
let y = 5.3

// Go!
var z: Double = 12 / 5.3

print("The double is: \(z)")
//: **Try It!** Divide 352 by 10 - Print the result
// Go!
var p: Double = Double(352)/Double(10)
//: **Try It!** Given a series of grades earned over three months, average the grades for that period
let g1 = 75
let g2 = 80
let g3 = 95

// Go!
let average = Double((g1 + g2 + g3) / 3)
//: **Try It!** Print the last digit of 354 - (Hint: use the remainder operator)
let i: Int = 354

// Go!
print(i % 10)
//: **Try It!** Evaluate an expression that shows that 3 is less than 5 (Hint: use the print statement)
let three = 3
let five = 5

// Go!
print("Is three < five? \(three < five)")
//: **Try It!** Evaluate an expression that shows if the sky is blue
var skyColor = "blue"

// Go!
print("Is the sky blue? \(skyColor == "blue")")
//: [Next](@next)
