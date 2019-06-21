//: [Previous](@previous)

/*:
 # Enumerations
 A custom data type that is made up of named values, which are called members.  It is a way to identifiy a fixed set of things, and give that set a name.
 
 Say you know that a particular property or field in an app will represent the day of the week, let's call it DayOfWeek.  It will have 7 potential values - Monday - Sunday.  You could represent this in a number of ways.
 
 One way simple way would be a set of fixed constants where the data type would be an integer
 * let Monday = 1
 * let Tuesday = 2
 * let Wednesday = 3
 * ....
 
 Or you could represent the constants as strings where:
 * let Monday = "Mo"
 * let Tuesday = "Tu"
 * let Wednesday = "We"
 
 But in both cases, as you or the Next Poor Guy that is working with your code may not quickly and easily recall how the DayOfWeek variable is represented.  Is it an Int containing 0-6 or 1-7?  Or a String?  And is Tuesday represented as a 1, a 2, Tuesday or "tu"?
 
 An enumeration is a user defined type that represents a list of values.  If you use an enumeration you can declare a Swift variable as an enumeration.
 
 In the example from above you would have an enumeration that is defined like so:
 ```
 enum Day {
 case Monday
 case Tuesday
 case Wednesday
 case Thursday
 case Friday
 case Saturday
 case Sunday
 }
 ```
 Which means you can declare a variable like this:
 ```
 var DayOfWeek: Day = Day.Tuesday
 ```
 
 */
//: ## Basics
//: Create an enum that contains different types of pets
// Say you want to have a variable called pet type
enum PetType {
    case dog
    case cat
    case fish
    case squirrel
}

// If Swift can tell by context that you are talking about a specific enumeration, you can shorten the syntax and use the "dot syntax", like this:
var myPet: PetType = .fish
//: Sometimes you'll see an enumeration used to compare values
// Check on the fuzzy factor
switch myPet {
case .dog:
    print("It's fuzzy")
case .cat:
    print("It's fuzzy")
case .fish:
    print("Definitely isn't fuzzy")
case .squirrel:
    print("It's fuzzy")
}
//: Month enumeration - Check to see what season we are in
enum Month {
    case january, february, march, april, may, june, july, august, september, october, november, december
}
/*:
 ## Raw Values
 Notice that enumerations don't have an underlying value.  The enumeration is the value itself.  However, you can have raw value associated with the enumeration.  A common type to associate is would be an Int, String, or Character.
 
 For example you could associate an Int with an enum like this:
 ```
 enum Direction: Int {
 case North = 1
 case East = 2
 case South = 3
 case West = 4
 }
 ```
 
 */
//: Or you can use the following shortcut and the compiler will increment the rawValue for each case
// Direction enum
enum Direction: Int {
    case North = 1
    case East
    case South
    case West
}
//: Associating an enumeration with a String is common say like the example above
// WeekDay enum
enum WeekDay: String {
    case Monday = "Monday"
    case Tuesday = "Tuesday"
    case Wednesday = "Wednesday"
    case Thursday = "Thursday"
    case Friday = "Friday"
    case Saturday = "Saturday"
    case Sunday = "Sunday"
}
/*:
 ## Your Turn
 **Try It!**
 - Define an enum named Hand with three members: Rock, Paper, and Scissors
 - Make an enum with the name Result with members of Win, Lose and Tie
 - Write a function to take two hands and determine the result
 */
// Go!
enum Hand {
    case rock
    case paper
    case scissors
}

enum Result {
    case win
    case lose
    case tie
}

func playRockPaperScissors(hand1: Hand, hand2: Hand) {
    switch (hand1, hand2) {
    case (.rock, .paper):
        print("Lost")
    case (.rock, .scissors):
        print("Won")
    case (.rock, .rock):
        print("Tie")
    case (.paper, .rock):
        print("Won")
    case (.paper, .scissors):
        print("Lost")
    case (.paper, .paper):
        print("Tie")
    case (.scissors, .paper):
        print("Won")
    case (.scissors, .rock):
        print("Lost")
    case (.scissors, .scissors):
        print("Tie")
    }
}


//: [Next](@next)
