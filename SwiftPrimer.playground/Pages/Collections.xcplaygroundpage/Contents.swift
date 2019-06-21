//: [Previous](@previous)
/*:
 # Collections
 ## Collection Type Summary
 Collections are groups of data.
 There are three primary types of collections:
 * Array - ordered group
 * Set - unordered group
 * Dictionary - group of keys and values
 ## Array - An ordered collection of values of the same type
 An ordered collection is primarily useful if you want to keep the items in a group in a specific order.  For example, when you want to create a list, then sort it after items have been added.  They are you to get a specific item by the array index.
 */
// Say we want to create a shopping list - That would work best in an array of strings

var shoppingList: [String] = [String]()

print("This is a String array that has \(shoppingList.count) items in it")

// Add some items to the list
shoppingList.append("Green Eggs")
shoppingList.append("Ham")

print("This is a String array that has \(shoppingList.count) items in it")

// We can create a brand new list and initialize it with an Array Literal

var importantFoods = ["Coke", "Ice Cream", "Twinkies"]

print("This is an array that has \(importantFoods.count) items in it")

// And we can combine the two lists using the + or += operator

shoppingList += importantFoods
//shoppingList = shoppingList + importantFoods

print(shoppingList)
print(importantFoods)

// You can get the first and last items in the array by using the properties of the same name

print("The first item on the list is: \(String(describing: shoppingList.first))")

print("The last item on the list is: \(String(describing: shoppingList.last))")


// Also, you can access each item in an array using an index.  
// Note that the index is 0 based

// First Element
print(shoppingList[0])

// Last Element
print(shoppingList[shoppingList.count-1])

// You can add an remove items at specific indices too
shoppingList.insert("Bread", at: 0)
print("Now the list has \(shoppingList) in it")

shoppingList.remove(at: shoppingList.count-1)
print("Now the list has \(shoppingList) in it")

// Print out each item in the list using a for loop
for item in shoppingList {
    print(item)
}

// Check to see if the array contains a item
if shoppingList.contains("Bread") {
    print("There's bread in the array")
}
/*:
 ## Dictionary - Unordered group of values that store both a key and a value
 Similar to a word in a dictionary entry (as the key) and the word's definition as the value.
 */
// Declare empty dictionaries
var numbersInEnglish: [Int : String] = [:]

// Make sure it is empty
print(numbersInEnglish.isEmpty)

// Filling it up using a dictionary literal
numbersInEnglish = [1 : "one", 2 : "two", 3 : "three"]

print(numbersInEnglish)

// Creating a new dictionary and putting values in it with a dictionary literal
var stateAbbreviations: [String:String] = ["OH" : "Ohio", "IN" : "Indiana", "KY" : "Kentucky", "PA" : "Pennsylvania", "MO" : "Montana"]
//: ### How many?
// How many states are in the dictionary
print("The number of states in the dictionary are: \(stateAbbreviations.count)")

// Print the state for OH
print("OH is: \(String(describing: stateAbbreviations["OH"]))")

// Update a value
stateAbbreviations.updateValue("Missouri", forKey: "MO")

// And add Montana
stateAbbreviations["MT"] = "Montana"

print(stateAbbreviations)

stateAbbreviations["OH"] = "Ohio"

print(stateAbbreviations)

stateAbbreviations["XY"]
//: ### You can iterate over a dictionary in a few different ways
// By key
for stateCode in stateAbbreviations.keys {
    print("Abbreviation: \(stateCode)")
}

// By value
for stateName in stateAbbreviations.values {
    print("Name: \(stateName)")
}

// By entry
for (stateCode, stateName) in stateAbbreviations {
    print("State: \(stateCode), Name: \(stateName)")
}
/*:
 ## Set - Unordered group of values
 A set stores a group of values in no particular order.\
 They have a similar features as arrays, but they have specific set methods.\
 You'll use sets less often, but they have some nice features
 */
// Creating an empty set of type String
var emptyPeopleSet: Set<String> = []

var people: Set<String> = ["John", "Jeff", "Dave", "Joey", "Bob", "Jim", "Don", "Joe"]
var morePeople: Set<String> = ["Angie", "Robin", "Judy", "Faye", "Joan", "Alice", "Don", "Ruth", "Roma"]

print(people)

// Test for emptyness
if emptyPeopleSet.isEmpty {
    print("No people here")
}

// Since this is an unordered set, you don't access items in the list by index.

// This is also true for add and remove

people.insert("Floyd")
print(people)

print("Before removing people: \(morePeople)")
morePeople.remove("Roma")
morePeople.remove("Ruth")
print("After removing them: \(morePeople)")

// Just like with arrays, you can iterate over items in a set

for person in people {
    print("name: \(person)")
}

// You can also test to see if an item is in a set using .contains(_:)

if morePeople.contains("Angie") {
    print("yes")
}

// And check to see if two sets contain the same item using the ==

if people == morePeople {
    print("They are equal")
} else {
    print("They are not equal")
}


// You can check to see if there are common items in two sets
print("The common items in the set are:\(people.intersection(morePeople)) ")

// You can also get a union of two sets

print("All the people \(people.union(morePeople))")
/*:
 ## Your Turn
 **Try It!**
 * Create an empty array of Integers named arrayOfInts
 * Verify that it isn't empty using the isEmpty method
 */
// Go!
var arrayOfInts:[Int] = [Int]()
print("I am very empty: \(arrayOfInts.isEmpty)")
/*:
 **Try It!**
 * Load arrayOfInts2 with the values 1,1,2,3,5,8,13
 * Create another array of Ints and load it with 2,4,6,8,10
 * Check to see if the two arrays are equal to one another
 */
// Go!
var arrayOfInts2:[Int] = [1, 1, 2, 3, 5, 8, 13]
var anotherArrayOfInts:[Int] = [2, 4, 6, 8, 10]

print("Are they the same: \(arrayOfInts2 == anotherArrayOfInts)")
/*:
 **Try It!**
 * Append the two arrays together
 * Show how many items are in the array
 * List each item in the array using a for loop
 */
// Go!
var arrayOfFish: [String] = ["one fish", "two fish", "red fish", "blue fish"]
var anotherArrayOfFish: [String] = ["black fish", "blue fish", "old fish", "new fish"]

arrayOfFish += anotherArrayOfFish

print("There are now \(arrayOfFish.count) fish")

for fish in arrayOfFish {
    print(fish)
}
/*:
 **Try It!**
 * Insert a fish at the beginning of the array
 * Remove the last fish from the array
 * Print the result
 
 */
arrayOfFish.insert("gold fish", at: 0)
arrayOfFish.remove(at: arrayOfFish.count - 1)
print(arrayOfFish)
/*:
 **Try It!**
 * Insert a 7 at the beginning of the array
 * Remove the last item from the array
 * Print the result
 
 */

// Go!
var numArray = [1, 2, 3, 4, 5, 6]
numArray.insert(7, at: 0)
numArray.remove(at: numArray.count - 1)
print(numArray)
//: [Next](@next)
