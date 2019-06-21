//: [Previous](@previous)
/*:
 # Structs - Create your own types
 
 Creating a struct is a way to group values together and create your own type.  Usually you will choose to use a struct to group a small set of data together that you would like to treat as an individual entity or thing.
 
 In general, a struct will contain primarily data that is not intended to be modified after the struct is created, like a point on a map or an x,y coordinate on a graph.*/
// GeoPoint struct
struct GeoPoint {
    var latitude: Double
    var longitude: Double
}

var location1: GeoPoint
location1 = GeoPoint(latitude: 37.8147096, longitude: -82.8089753)
//: A struct has the concept of a default initializer, which is created by default. This is a type of method that allows you to define the values of the items in the struct when you create a variable that uses your struct.  You don't get a free default initializer when you create a class (next section)
import Foundation
//: Note that you can create your own intializers
struct ToDoItem {
    var itemText: String
    var isComplete: Bool?
    var completionDate: Date?
    
    init (itemText: String, isComplete: Bool) {
        self.itemText = itemText
        self.isComplete = isComplete
    }
}

var todoItem: ToDoItem = ToDoItem(itemText: "buy groceries", isComplete: false)

//: You can access the **properties** of the structs using "dot" syntax
// Getting the latitude of the location from above
print(location1.latitude)

// Getting the values of the todo Item
print("The todo item is: \(todoItem.itemText)")
print("The todo item is complete: \(String(describing: todoItem.isComplete))")

//: Note that unlike other languages, a struct can have methods.  Usually these methods are small convenience methods that deal specifically with the data in the struct.
// Import Foundation
import Foundation

// GeoPoint2 struct
struct GeoPoint2 {
    var latitude: Double
    var longitude: Double
    let createDate = Date()
    let updateDate = Date()
    
    func getSummary() -> String {
        return "lat: \(latitude), lon: \(longitude)"
    }
}

var location2:GeoPoint2 = GeoPoint2(latitude: 37.8147096, longitude: -82.8089753)

print(location2.getSummary())
/*:
 ## Your Turn
 **Try It!**\
 Create a struct called point that hold's a x,y coordinate and create an instance of the point
 */
// Go!
struct Point {
    let x: Int
    let y: Int
}

let p = Point(x: 2, y: 5)

print(p)
/*:
 **Try It!**\
 Create another struct that holds two points, p1, and p2 and has a method that calculates the slope between the two points
 
 Two Hints:
 1) slope = rise/run (or change in y divided by change in x)
 2) Don't forget casting when dividing two Ints (if you do that)
 */
// Go!
struct PointSlope {
    let p1: Point
    let p2: Point
    
    func calcSlope() -> Double {
        let rise = Double(p1.y - p2.y)
        let run = Double(p1.x - p2.x)
        
        return rise/run
    }
}

let p1 = Point(x: 1, y: 4)
let p2 = Point(x: 6, y: -2)

let slope = PointSlope(p1: p1, p2: p2)

print("Slope: \(slope.calcSlope())")
/*:
 **Try It!**\
 Create a T-shirt struct that has size, color and material options. Provide methods to calculate the cost of a shirt based on its attributes.
 
 * Use three enumerations to represent Size, Color, and Material
 * Create function to calculate cost based on the increasing cost when size get's larger and material is non-cotton.
 
 ```
 * That's 3 enums
 * 1 struct called TShirt
 * A struct method called cost that accepts the base cost of a shirt and returns the actual cost based on the materials and size
 */
// Go!
enum Size: String {
    case Small = "Small"
    case Medium = "Medium"
    case Large = "Large"
    case Extra = "XL"
    case XXL = "XXL"
}

enum Material {
    case Cotton
    case Polyester
    case Other
}

enum Color {
    case Red
    case Blue
    case White
    case Black
    case Green
}

struct TShirt {
    let size: Size
    let color: Color
    let material: Material
    
    func cost(baseCost: Double) -> Double {
        
        let sizeMultiplier: Double
        
        switch size {
        case .Small, .Medium, .Large:
            sizeMultiplier = 1.0
        case .Extra:
            sizeMultiplier = 1.1
        case .XXL:
            sizeMultiplier = 1.2
        }
        
        let materialMultiplier: Double
        
        switch material {
        case .Cotton:
            materialMultiplier = 1.0
        case .Polyester:
            materialMultiplier = 1.1
        default:
            materialMultiplier = 2.0
        }
        
        return baseCost * sizeMultiplier * materialMultiplier
    }
}

TShirt(size: Size.XXL, color: Color.Green, material: Material.Cotton).cost(baseCost: 10.0)
/*:
 ## Your Turn
 **Try It!**
 - Define an enum with American change penny, nickel, etc.
 - Assign the appropriate values for each coin in the enumeration
 - Create a collection containing change from this enumeration
 - Write a function to calculate the value of the coins
 */
// Go!
enum Change: Double {
    case penny = 0.01
    case nickel = 0.05
    case dime = 0.10
    case quarter = 0.25
}

var changeArray: [Change] = []
changeArray.append(.nickel)
changeArray.append(.quarter)

func calculateTotal(coins: [Change]) {
    var total = 0.0
    for coin in coins {
        total += coin.rawValue
    }
    print(total)
}

calculateTotal(coins: changeArray)
//: [Next](@next)
