//: [Previous](@previous)
/*:
 # Functions - Blocks of reusable code
 
 Creating a function allows for a programmer to create some code that performs and activity and give it a name so it can be used over and over again.
 
 For example, in the section about control flow we used this code:
 
 dewPoint = 51
 
 ```
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
     print("You broke my hygrometer")
 }
 
 ```
 
 If we thought we would use this code over and over again, we'd create a function like this:
 */
// A function called getDewPointText where a dewPoint is passed and a String is returned

func getDewPointText(dewPoint: Int) -> String {
    var returnText: String
    
    switch dewPoint {
    case 1...49:
        returnText = "Dry"
    case 50...54:
        returnText = "Very nice"
    case 55...59:
        returnText = "Nice"
    case 60...64:
        returnText = "Nice, but a little humid"
    case 65...69:
        returnText = "Humid"
    case 70...74:
        returnText = "Uncomfortable"
    case 75...79:
        returnText = "Very uncomfortable"
    case 80...Int.max:
        returnText = "I want to die"
    default:
        returnText = "Unknown"
    }
    
    return returnText
}
print(getDewPointText(dewPoint: 82))
print(getDewPointText(dewPoint: 43))

// Make a method to see if a number is even

func isAnEvenNumber(num: Int) -> Bool {
    var isEven: Bool
    
    if num % 2 == 0 {
        isEven = true
    } else {
        isEven = false
    }
    return isEven
}

// Try it out
var x = 10
isAnEvenNumber(num: x)

// Note that the standard syntax requires you name the parameters when you call a function
// You can make the external parameter name optional.

// Or a function that takes an array of integers and finds the maximum value
var years: [Int] = [10,20,30,480,50,60,70,90,370]

func findMaxYears(_ values:[Int]) -> Int {
    var currentMax:Int = values[0]
    var curValue: Int
    
    for i in 0...values.count-1 {
        curValue = values[i]
        
        if curValue > currentMax {
            currentMax = curValue
        }
    }
    return currentMax
}

print("The max of that array is: \(findMaxYears(years))")
//: ### Overloading
// Here's a simple example of a function with multiple parameters, and the external parameter name is optional
func multiply(_ first:Int, _ second:Int=1) -> Int {
    return first * second
}

var num1 = 3
var num2 = 4
print("\(num1) * \(num2) = \(multiply(num1,num2))")
multiply(4)

// Note that you can take a single method and give it different parameters or parameter signature, and redefine the function with the specific parameters
func multiply(first: Int, and second: Int = 1) -> Int {
    return first * second
}

print("\(multiply(first: num1, and: num2))")
//: ### In-Out parameters

// Parameters by defaults are constants.  Any time you change a parameter inside of a function
// you'll get a compiler error

//func double(_ num:Int) {
//    num *= 2
//}

func exclamation(word: inout String) {
    word += "!"
}

var wordToYell = "Hey"
exclamation(word: &wordToYell)

// This is a compile time error


// If you declare the parameter with inout, it makes it mutable.  But you have to pass it by reference....
//: ### Recursive functions
// You can create a function that calls itself and then quits when it reaches a certain point

// Factorial function
// 3! = 3 * 2 * 1

func factorial(_ num: Int) -> Int {
    print(num)
    if num == 1 {
        return 1
    } else {
        return num * factorial(num-1)
    }
}

var n: Int = 6
print("\(n)! = \(factorial(n))")
/*:
 # Built in Math Functions
 
 Swift and its associated libraries have some built in functions as well.  Here are a few examples of a few:
 */
import Foundation

// Square Root
sqrt(25.0)

// Max - max of two numbers
max(25, -5, 27, 34, 39, 2, 3)

// Min - min of two numbers
min(-3, -6, 1, 2, -10 )
/*:
 ## Your Turn
 **Try It!**\
 Create a function that takes produces the square of a number
 */
// Go!
func square(_ num: Int) -> Int {
    return num * num
}

print("Square of 20 is \(square(20))")
/*:
 **Try It!**\
 Create a function that determines if a number is odd.  Try using a ternary operator, and make the parameter name not required
 */
// Go!
func isOdd(_ number: Int) -> Bool {
    return (number % 2 != 0 ? true : false)
}

isOdd(7)
/*:
 ## Your Turn
 **Try It!**\
 Create a function takes a first name and a last name and returns the full name
 */
// Go!

func getFullName(firstName: String, lastName: String) -> String {
    let fullName = firstName + " " + lastName
    return fullName
}

print(getFullName(firstName: "Alex", lastName: "Brashear"))
/*:
 ## Your Turn
 **Try It!**\
 Create a function that returns the length of the full name given the first name and last name
 */
// Go!
func getLengthOfFullName(firstName: String, lastName: String) -> Int {
    let fullName = getFullName(firstName: firstName, lastName: lastName);
    
    return fullName.count
}

print("\(getLengthOfFullName(firstName: "Devan", lastName: "Allara"))")
/*:
 **Try It!**\
 Create a function that takes a string and returns an array of character
 ```
 Hint1: var retArray = [Character]()
 Hint2: for character in str.characters
 */
// Go!
func arrayOfChar(_ stringToConvert: String) -> [Character] {
    var returnArray = [Character]()
    
    for character in stringToConvert {
        returnArray.append(character)
    }
    return returnArray
}

print(arrayOfChar("All work and no play makes Devan a dull boy."))
/*:
 **Try It!**\
 Create a function that returns a reversed string
 Use the function in the previous example, but instead return the string reversed
 ```
 Hint1: An array has a reversed() method.  Try using that....
 */
// Go!
func reverseString(_ stringToReverse: String) -> String {
    var reversedText = ""
    
    for character in arrayOfChar(stringToReverse).reversed() {
        reversedText.append(character)
    }
    return reversedText
}

print(reverseString("All work and no play"))

//func reverseString(_ stringToReverse: String) -> String {
//    return stringToReverse.reversed()
//}
/*:
 **Try It!**\
 Create a function that counts down from n to 0 then prints "Blastoff!"
 Add a little drama by having it pause a little between each number
 ```
 Hint1: The sleep(1) function will sleep for 1 second
 */
// Go!
func blastOff(n: Int) {
    var i = n
    
    while i > 0 {
        print(i)
        
        if i > 1 {
            sleep(1)
        }
        i-=1
    }
    print("Blastoff!")
}

blastOff(n: 10)
/*:
 **Try It!**\
 Create a recursive function to get the nth fibonacci number, where n is determined by the passed in integer.
 ```
 Recall the sequence is 1,1,2,3,5,8,13.... so:
 
 fibonacci(1) = 1
 fibonacci(2) = 1
 fibonacci(3) = 2
 ...
 
 */
func fibonacci(number: Int) -> Int {
    
    if number == 0 {
        return 0
    } else if number == 1 {
        return 1
    }
    
    return fibonacci(number: number - 1) + fibonacci(number: number - 2)
}

let fibNumber13 = fibonacci(number: 13)

print(fibNumber13)
//: [Next](@next)
