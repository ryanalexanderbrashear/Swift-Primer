//: [Previous](@previous)
/*:
 # Protocols
 
 ## Protocols
 Protocols, like inheritance are another way to define what information and behavior are available in a class.  But rather than inherit functionality from a parent class, a protocol is a blueprint for behaviors and parameters that a class must implement.
 
 Then it can be said that a given class *conforms* or *implements* a protocol.
 
 Take the vehicle classes from our last example:*/

class Car: Vehicle {                        // <- Note that the Car Inherits Vehicle
    var numberOfDoors: Int
    
    init (regsitrationNumber: String, numberOfDoors: Int) {
        self.numberOfDoors = numberOfDoors
        
        super.init(regsitration: regsitrationNumber)
    }
    
}

class Truck: Vehicle {                      // <- Note that the Truck Inherits Vehicle
    var numberOfAxles: Int
    
    init (regsitrationNumber: String, numberOfAxles: Int) {
        self.numberOfAxles = numberOfAxles
        
        super.init(regsitration: regsitrationNumber)
    }
}
/*:
 
 We can take these same two classes that inherit from Vehicle, and extend their functionality with a protocol.  Note that a protocol doesn't define the definition, it just declares what functionality or properties must be handled to have a class conform or extend the protocol
 
 For example:*/

// Create a Moveable protocol:

protocol Moveable {
    func move()
    func stop()
}

/*:
 Note that a struct or an enum can also adopt a protocol.  Once the class, object or struct implements all the properties and methods that are part of the protocol, then the class, object, or struct conforms to the protocol.
 The compiler will tell you if you adopt a protocol, but haven't conformed to it.
 */
//: Now let's extend the Car and Truck classes to conform to Moveable
// Extension for car class
extension Car: Moveable {
    func move(){
        print("the car starts to move")
    }
    func stop() {
        print("the car brakes and stops")
    }
}

// Extension to truck class
extension Truck: Moveable{
    func move(){
        print("the truck starts to move")
    }
    func stop(){
        print("the truck crashes into a wall and stops")
    }
}

// Initializing each vehicle
var myCar = Car(regsitrationNumber: "53434343", numberOfDoors: 3)
var myTruck = Truck(regsitrationNumber: "w443e3e", numberOfAxles: 4)

// But they are also moveable
myCar.move()
myCar.stop()
myTruck.move()
myTruck.stop()
/*: This begs the question, why bother?  Inheritence works just fine.  However, with a protocol you are up another level of abstraction.  While we have defined specific methods for the generic class Vehicle, by using a protocol, we can have entirely different classes conform to Moveable.
 
    What else could be Moveable (moves and stops) yet we wouldn't inherit from a Vehicle?
    - Fish
    - Person
    - ?

*/
/*:
 ## Your Turn
 **Try It!**\
 Now create a protocol called "BadDog" that defines a method called "chewShoes" and make the previous SmallDog and BigDog classes conform to the BadDog protocol
 */

// Go!
protocol BadDog {
    func chewShoes()
}

class Dog {
    var height: Int
    var weight: Int
    var color: String?
    
    init(height: Int, weight: Int) {
        self.height = height
        self.weight = weight
    }
}

class SmallDog: Dog, BadDog {
    func speak() {
        print("Yip!")
    }
    func chewShoes() {
        print("small dog nips shoestring")
    }
}

class BigDog: Dog, BadDog {
    func speak() {
        print("Woof!")
    }
    func chewShoes() {
        print("Big Dog destroys shoes")
    }
}

var jet = BigDog(height: 5, weight: 5)
var eightball = SmallDog(height: 1, weight: 1)
eightball.chewShoes()
jet.chewShoes()
//: [Next](@next)
