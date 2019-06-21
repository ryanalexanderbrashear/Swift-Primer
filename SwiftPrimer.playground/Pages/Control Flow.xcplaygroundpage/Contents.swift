//: [Previous](@previous)
/*:
 # Control Flow -  Control the Flow of the Program
 There are several types of control mechanisms:
 * Conditionals
    * If Statement
    * Switch Statement
 * Loops
    * For Loops
    * While Loops
    * Repeat*/
//: ## Conditionals
//: ### If Statement- If a given conditional is true then execute
// The traditional if statement
if true {
    print("always true")
}

if !true {
    print("always false")
} else {
    print("false")
}

// Simple dewpoint in F to english translator
var dewPoint = 65

if dewPoint > 70 {
    print("It's muggy")
} else {
    print("It's nice outside")
}
//: ### Nested Ifs
// If statements can get more complex and be used with a number of data types or with any method that returns a boolean (true or false)

// Nested example
let degreeType = "K"
let dewpoint = 29

if degreeType == "F" {
    if dewpoint > 70 {
        print("A dewpoint of \(dewpoint) degrees F is muggy")
    } else {
          print("A dewpoint of \(dewpoint) degrees F is nice)")
    }
}  else if degreeType == "C" {
    if dewPoint > 20 {
        print("A dewpoint of \(dewpoint) degrees C is muggy")
    } else {
        print("A dewpoint of \(dewpoint) degrees C is nice")
    }
} else {
    print("We don't support anything other than F or C")
}

// Method example - Methods can return true or false, like .contains

let goodCandy: Set<String> = ["Licorice","Good and Plenty", "Jelly Beans"]
var candy = "Milk Duds"

if goodCandy.contains(candy) {
    print("The candy is good")
} else {
    print("This is bad candy")
}
/*:
 > The **OR** example I promised from the Operators page
 > Remember:
 > * true || true = true
 > * false || true = true
 > * true || false = true
 > * false || false = false
 */
candy = "Skittles"
var backupCandy = "Milk Duds"

if goodCandy.contains(candy) || goodCandy.contains(backupCandy) {
    print("This is good candy")
} else {
    print("Still bad candy")
}
//: ### Short Circuiting
//: An if statement with a series of will fail early if it knows it will fail
let name = "Sam"

if 3 < 2 && name == "Same" {
    print("This won't be executed even though one of the conditions is met")
} else {
    print("One of the conditions is false")
}
//: ### Ternary Operator - Technically an operator
//: Sometimes you will use this for brevity
let prefersNickname: Bool = false
let firstName = "Charles"
let nickName = "Chuck"

// This if statement....
if prefersNickname {
    print("Name: \(nickName)")
} else {
    print("Name: \(firstName)")
}

// Can be this instead
print("Name: \(prefersNickname ? nickName : firstName)")
//: ## Switch Statement
// Given a value, test to see if that matches any of a list of patterns and execute if it does
// For times when that if/then statement is getting too complex
// Back to them dew point example

dewPoint = 51
switch dewPoint {
case 1...49:
    print("Dry")
case 50...54:
    print("Very nice")
case 55...59:
    print("Nice")
case 60...64:
    print("Nice, but a little humid")
case 65...69:
    print("Humid")
case 70...74:
    print("Uncomfortable")
case 75...79:
    print("Very uncomfortable")
case 80...Int.max:
    print("I want to die")
default:
    print("Unsure")
}

let pet = "Fish"

switch pet {
case "Cat", "Dog":
    print("Furry animals")
case "Fish":
    print("Not furry at all")
default:
    print("Pet unknown")
}
//: ## Loops
//:### For Loops
//: Do something n times, then stop
// Loop through integers between 1 and 10, printing each
for i in 1...10 {
    print(i)
}

// Fibonacci Sequence
// 1,1,2,3,5,8,13

var first = 0
var second = 1
var sequence: String = "\(second)"

for _ in 0...20 {
    sequence.append(",\(first+second)")
    let newSecond = first+second
    first = second
    second = newSecond
}

print("Fibonacci: \(sequence)")

// Loop through a collection
var planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune", "Pluto"]

for planet in planets {
    print("Planet - \(planet)")
}
//: ### While Loops 
// Do something while condition is true, then stop
// Fibonacci sequence again.  This time, go until the current number is less than 3000
first = 0
second = 1
sequence = "\(second)"

while second < 3000 {
    let newSecond = first + second
    sequence.append(",\(first+second)")
    first = second
    second = newSecond
}

print("Fibonacci: (< 3000) \(sequence)")
//: ### Repeat - Repeat until condition is no longer true, then stop
// Back to the Fibonacci sequence
first = 0
second = 1
sequence = "\(second)"

repeat {
    let newSecond = first+second
    sequence.append(", \(newSecond)")
    first = second
    second = newSecond
} while second < 3000

print("Fibonacci sequence (<3000) = \(sequence)")


//: ### Break - To break out of a loop
let neverStopLooping = true
var i = 0

while neverStopLooping {
    i += 1
    print(i)
    
    // check if too many
    if i > 9 {
        // stop!
        break
    }
}

print("Done")
/*:
 ## Your Turn
 **Try It!**\
 Using an If statement if given a numeric score determine if the grade is an A,B,C,D, or F, and print out the resulting grade
 */
let score = 82
var grade: String

// Go!
if score >= 90 {
    grade = "A"
} else if score >= 80 {
    grade = "B"
} else if score >= 70 {
    grade = "C"
} else if score >= 60 {
    grade = "D"
} else {
    grade = "Summer school"
}

print("Your grade is \(grade)")
/*:
 **Try It!**\
 Using the same logic as in the previous exercise, print out the resulting grade using a switch statement.
 
 * Hint - use the range operator
 */
var score2 = 93

// Go!
switch score2 {
case 0..<60:
    grade = "F"
case 60...69:
    grade = "D"
case 70...79:
    grade = "C"
case 80...89:
    grade = "B"
case 90...100:
    grade = "A"
default:
    grade = "Unsure - I really have no idea."
}
/*:
 **Try It!**\
 Using a for loop, print out all the even numbers between 0 and 50
 */
// Go!
var evens = [Int]()

for item in 0...50 {
    if item % 2 == 0 {
        evens.append(item)
    }
}

print("The even numbers are: \(evens)")
/*:
 **Try It!**\
 Given a number of rows and columns draw a square of asterisks using a while loop.
 ```
 *****
 *****
 *****
 *****
 ```
 Two Hints:
 * print("*", terminator:"") does not put a linefeed at the end of each print
 * print("") does put a linefeed at the end of the print
 */
var totalRows = 7, totalColumns = 10

// Go!
var row = 1
var col = 1

while (row <= totalRows) {
    row += 1
    while (col <= totalColumns) {
        print("*", terminator: "")
        col += 1
    }
    print("")
    col = 1
}
//: [Next](@next)
