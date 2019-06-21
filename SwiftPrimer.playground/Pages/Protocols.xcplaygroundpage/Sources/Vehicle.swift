open class Vehicle {
    var registrationNumber: String
    var owner: Person?
    
    public init (regsitration: String) {
        registrationNumber = regsitration
    }
    
    // A method to set the owner of the vehicle
    func grantOwnership(newOwner: Person) {
        if let curOwner = owner {
            
            if curOwner.equals(newOwner) {
                // Don't do anything
                print("error - this person is already the owner")
            } else {
                // TODO: Might want to set a log of previous owners here....
                // Set the owner
                owner = newOwner
                print("Set the new owner to - \(newOwner.name)")
            }
            
        } else {
            // no owner was set, so make the new owner the owner
            owner = newOwner
            print("Set the first owner to - \(newOwner.name)")
        }
    }
    
}
