//: [Previous](@previous)


/*:
 # Object Oriented Programming (OOP)
 
 ## Objects
 One you understand the basics of classes you can start to model things in the real world.  You can think of a class as a blueprint for any particular type of object, like a Person, a Vehicle or a Building.
 
 Each object will have specific properties or data, like a name a gender, or width, height, weight, as well as contain methods that perform action.  Like walk, run, fly, or openHood - depending of course on the object you are modeling.
 
 For example:*/
// A person class
class Person {
    var firstName: String?
    var lastName: String?
    
    var name: String {
        get {
            var retText: String
            if let first = firstName, let last = lastName {
                retText = "\(first) \(last)"
            } else {
                retText = "Person"
            }
            return retText
        }
    }
    
    init (first: String, last: String) {
        firstName = first
        lastName = last
    }
    
    // this is a method to see if two persons are equal to each other
    func equals(_ p: Person) -> Bool {
        if firstName == p.firstName && lastName == p.lastName {
            return true
        } else {
            return false
        }
    }
}


// Create the person and print the name

var p1: Person = Person(first: "Jon", last: "Dough")
print(p1.name)

// Now add vehicle class
class Vehicle {
    var registrationNumber: String
    var owner: Person?
    var vehicleColor: String?
    
    // Designated initializer
    init (registration: String) {
        registrationNumber = registration
    }
    
    // Convenience
    convenience init (registrationNum: String, color: String){
        self.init(registration: registrationNum)
        vehicleColor = color
    }
    
    func grantOwnership(newOwner: Person) {
        if let curOwner = owner {
            if curOwner.equals(newOwner) {
                print("Nothing to do, same person")
            } else {
                owner = newOwner
                print("Set the new owner to - \(newOwner.name)")
            }
        } else {
            owner = newOwner
            print("Set the first owner to - \(newOwner.name)")
        }
    }
    
    // Open
    func openHood() {
        print("There's a vehicle engine")
    }
}

// Create the car and assign the owner
var aVehicle = Vehicle(registration: "123425FASDF1234")
var person1 = Person(first: "Alex", last: "Brashear")
aVehicle.grantOwnership(newOwner: person1)


// Give the same car a new owner
var person2 = Person(first: "Cameron", last: "Latham")
aVehicle.grantOwnership(newOwner: person2)
/*:
 ## Inheritance
 You may want to create a class that uses a more generic class.  For example, there are other types of vehicles, like cars and bicycles
 
 You can use inheritance to create two new classes that each make use of the Vehicle class.  The key here is that the child class inherits properties and behavior from it's parent, but then has the ability to add its own.
 
 In the case below, there are two more specific types of Vehicles that inherit registration and ownership behavior from the Vehicle class.  But each adds its own properties.
 
 For example:*/
// A car class that inherits from the vehicle class
class Car: Vehicle {
    var numberOfDoors: Int
    
    init (registrationNumber: String, numberOfDoors: Int) {
        self.numberOfDoors = numberOfDoors
        super.init(registration: registrationNumber)
    }
    override func openHood() {
        print("There is a car engine")
    }
}

// A truck class that inherits from the vehicle class
class Truck: Vehicle {
    var numberOfAxles: Int
    
    init (registrationNumber: String, numberOfAxles: Int) {
        self.numberOfAxles = numberOfAxles
        super.init(registration: registrationNumber)
    }
    override func openHood(){
        print("There is a truck engine")
    }
}

// Initializing each vehicle
var myCar = Car(registrationNumber: "1234ASDF", numberOfDoors: 4)
var myTruck = Truck(registrationNumber: "2345ASDF", numberOfAxles: 4)

// Using same Vehicle method inside of new classes
myCar.grantOwnership(newOwner: person1)
myTruck.grantOwnership(newOwner: person2)
/*:
 ## Polyorphism
 
 Polymorphism is a concept in object oriented programming that allows an object to be treated differently depending on it's context.
 
 Take our example from above:
 */
// We have the truck class which inherits from the vehicle.  If we have a method that expects a Vehicle, and Car class that is expecting a Vehicle, then you can pass any of the objects to theis method.
func getColorForVehicle(vehicle: Vehicle) -> String {
    return(vehicle.vehicleColor ?? "no color set")
}

// Note that as you would expect, I can pass a Vehicle object to the getColorForVehicle
let auto: Vehicle = Vehicle(registrationNum: " 123242" , color: "Blue")
print(getColorForVehicle(vehicle: auto))

let jeffsCar: Car = Car(registrationNumber: "12323d", numberOfDoors: 4)
jeffsCar.vehicleColor = "pink"
print(getColorForVehicle(vehicle: jeffsCar))

// Now try the openHood method on the various vehicles
auto.openHood()
jeffsCar.openHood()
myTruck.openHood()
/*:
 ## Your Turn
 **Try It!**\
 Using the Dog class from the previous example, create two other dog breeds that inherit from the Dog class.  Implement the speak method in the two new subclasses, rather than in the parent class
 */
class Dog {
    var height: Int
    var weight: Int
    var color: String?
    
    init(height: Int, weight: Int) {
        self.height = height
        self.weight = weight
    }
}

// Go!

class SmallDog: Dog {
    func speak() {
        print("Yip!")
    }
}

class BigDog: Dog {
    func speak() {
        print("Woof!")
    }
}

var smallDog = SmallDog(height: 12, weight: 25)
var bigDog = BigDog(height: 45, weight: 100)

smallDog.speak()
bigDog.speak()
//: [Next](@next)
