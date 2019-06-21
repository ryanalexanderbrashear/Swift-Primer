//: [Previous](@previous)
/*: 
 # Delegates
 A delegate is simply a variable that conforms to a protocol, which is generally used to have classes notify one another of events that have occurred.
 
 In this example we have two classes, a Television, and a Viewer, and we would like to have the Viewer know when the TV was done reacting to the various click commands on the remote.  We can have the TV send messages back to the Viewer using a Delegate.
 
 Keep in mind that different objects like a Viewer and a TV are entirely separate and sometimes it takes time for each object to complete an action.  So delegates are really handy for communicating changes between objects.
 
*/
// For the moment ignore this delegate....
protocol TelevisionDelegate {
    func turnOnComplete(_ tv: Television)
    func turnOffComplete(_ tv: Television)
    func channelUpComplete(_ tv: Television)
    func channelDownComplete(_ tv: Television)
}

class Television {
    public var delegate: TelevisionDelegate?
    
    func turnOn() {
        print("TV turning On")
        delegate?.turnOnComplete(self)
    }
    
    func turnOff() {
        print("TV turning Off")
        delegate?.turnOffComplete(self)
    }
    
    func channelUp() {
        print("Changing channel up")
        delegate?.channelUpComplete(self)
    }
    
    func channelDown() {
        print("Changing channel down")
        delegate?.channelDownComplete(self)
    }
}

class Viewer {
    var tv = Television()
    
    init() {
        tv.delegate.self
    }
    
    func clickOn() {
        tv.turnOn()
    }
    func clickOff() {
        tv.turnOff()
    }
    func clickChannelUp() {
        tv.channelUp()
    }
    func clickChannelDown() {
        tv.channelDown()
    }
}
//: Now we create an extension to Viewer that conforms to the protocol by implementing the four methods required in the spec of the delegate
// Extend the viewer class
extension Viewer: TelevisionDelegate {
    //Television Delegate Methods
    func turnOnComplete(_ tv: Television) {
        print("The Tv is now on")
    }
    func turnOffComplete(_ tv: Television) {
        print("The Tv is now off")
    }
    func channelUpComplete(_ tv: Television) {
        print("The channel is flipped up")
    }
    func channelDownComplete(_ tv: Television) {
        print("The channel is flipped down")
    }
}

// Try it out
var viewer = Viewer()

viewer.clickOn()
viewer.clickChannelUp()
viewer.clickChannelDown()
viewer.clickOff()
//: [Next](@next)
