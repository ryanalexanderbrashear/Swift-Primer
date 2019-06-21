//: [Previous](@previous)
/*:
 # Classes
 
 In general, classes are like structs but they are used to model complex behavior, or data that is intended to be modified after a class object is created. Structs are intended to contain data that isn't intended to be modified once created.
 

 * Reference objects vs. Value objects
 * Stack vs. Heap
 
 You should expect that classes are larger and contain more functions or methods that allow them to perform specific actions.  For example:
 
*/
struct GeoPoint {
    var latitude:Double
    var longitude: Double
}

class City {
    var name: String                // This has to be populated by the initializer
    var state: String = ""           // Give this a default value of ""
    var location: GeoPoint?         // This is a point on a map
    var mayor: String?              // This is just the name, but it could be a Person class
    
    // This is an example of an initializer with an external name and an intername name
    init(WithCityOnly cityName: String) {
        name = cityName
    }
    
    // Here is another version of the above initializer with no external name
    init(_ cityName: String) {
        name = cityName
        print(cityName)
    }
    
    // A simple initializer
    init(cityName: String, state: String) {
        name = cityName
        self.state = state
    }
    
    // An initializer that allows the programmer to set all the properties
    init(cityName: String, state: String, latitude: Double, longitude: Double,
         mayorName: String) {
        name = cityName
        self.state = state
        location = GeoPoint(latitude: latitude, longitude: longitude)
        mayor = mayorName
    }
    
    // A simple method to print the basic details of the object
    func showBasicDetails() {
        if let mayor = self.mayor {
            print("City - \(name),\(state) Mayor - \(mayor)")
        } else {
            print("City - \(name),\(state)")
        }
    }
}

var homeTown = City(cityName: "Columbus", state: "OH")
var someCityInAState = City("Columbus")                     // No param name needed
var someOtherInAState = City(WithCityOnly: "Evansville")

homeTown.showBasicDetails()
/*:
 ## A Few Notes on Initializers
 
 Just like with structs, Initializers are special methods to create a new instance of a particular class.  But you don't get one for free, you must create them.  
 
 Note they are methods, but they're special snowflakes and don't use the func keyword.
 
 When you create a new instance of a particular class, you are calling an initializer
 ```
 var currentPerson:Person = Person(name: "Jon Dough")
 var anotherPerson:Person = Person()
 ```
 */
// Define an initializer

// A Rectangle class
class Rectangle {
    var sideA: Double
    var sideB: Double
    
    init(a: Double, b: Double) {
        sideA = a
        sideB = b
    }
}

var rect1 = Rectangle(a: 3.0, b: 4.0)
/*:
 ## More on Properties 
 Note this is valid for classes and structs
 
 So far, we've just been talking about stored properties in classes and structs.  There are also computed properties that perform functions when they are called
 */
// A Temparature class with a computed property

// Here's a better temp class with a getter and a setter property
class SimpleTemp {
    var farenheit: Double
    var celcius: Double {
        return (farenheit - 32) / 1.8
    }
    
    init(degreesF: Double) {
        farenheit = degreesF
    }
}

var stemp: SimpleTemp = SimpleTemp(degreesF: 80)

print(stemp.celcius)

class Temperature {
    var farenheit: Double = 32.0
    
    var celcius: Double {
        get {
            return (farenheit - 32) / 1.8
        }
        set {
            farenheit = (newValue * 1.8) + 32.0
        }
    }
}

var temp = Temperature()
print("Degrees C: \(temp.celcius)")

temp.celcius = 29.4
print("Degrees F: \(temp.farenheit)")
/*:
 ## Your Turn
 **Try It!**\
 Make a class called "Dog" with the following properties
 * Height in inches - Int (required)
 * Weight in pounds - Int (required)
 * Color - String (not required)
 
 Also create an initializer for the required variables
 */
// Go!
class Dog {
    var height: Int
    var weight: Int
    var color: String?
    
    init(height: Int, weight: Int, color: String?) {
        self.height = height
        self.weight = weight
        if let color = color {
            self.color = color
        }
    }
}

/*:
 **Try It!**\
 Now add a second class called "SpeakingDog" that is the same, but adds a method called "speak" that allows the dog to bark.
 */
// Go!
class SpeakingDog {
    var height: Int
    var weight: Int
    var color: String?
    
    init(height: Int, weight: Int) {
        self.height = height
        self.weight = weight
    }
    
    func speak() {
        print("Bark")
    }
}

var d = SpeakingDog(height: 35, weight: 35)
//: [Next](@next)
