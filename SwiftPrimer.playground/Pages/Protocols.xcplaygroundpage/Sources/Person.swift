open class Person {
    var firstName: String?
    var lastName: String?
    
    // This is a read only computed property!
    public var name: String {
        get {
            var retText: String
            if let first = firstName, let last = lastName {
                retText =  "\(first) \(last)"
            } else {
                retText = "Person"
            }
            return retText
        }
    }
    
    init (first: String, last:String) {
        firstName = first
        lastName = last
    }
    
    // This is a simple method to see if two persons are equal to each other
    public func equals(_ p: Person) -> Bool {
        if firstName == p.firstName && lastName == p.lastName {
            return true
        } else {
            return false
        }
        
        // Shorthand: return firstName == p.firstName && lastName == p.lastName
    }
}
