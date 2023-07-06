//Todo: Now we talk about Structure
//Todo: Structures are value types

struct Rectangle:Equatable {
    var width: Double
    var height: Double
    var _color: String = ""
    //calculated property
    var area: Double {
        get {
            return width * height
        }
    }
    //setter
    var color: String {
        get {
            return _color
        }
        set(value) {
            print("This is setter")
            _color = value
        }
    }
    static func == (rectA: Rectangle, rectB: Rectangle) -> Bool {
        return rectA.width == rectB.width
                && rectA.height == rectB.height
    }
}
var rect1 = Rectangle(width: 100, height: 200)
var rect2 = Rectangle(width: 300, height: 400)
var rect3 = rect1
var rect4 = Rectangle(width: 123, height: 456)
print(rect1.area) = 20000
print(rect4.area) = 20000
//rect4.area = 111
rect1.color = "red" //setter
print(rect1.color) //this is getter
//rect1 and rect3 are separated objects
//rect1.width = 111
//rect3.width = 222
//print(rect1)
//print(rect3)
//how to compare contents of 2 objects ?
//if rect1 == rect4 {
//    print("rect1 and rect4 has the same contents")
//}

//* Directory
struct Direction {
    static let north = "north"
    static let east = "east"
    static let west = "west"
    static let south = "south"
}
print("I go to \(Direction.west)")

//*Struct: POint
struct Point {
    var x = 0.0, y = 0.0
    func toString() -> String {
        //This is a method
        return "x = \(x), y = \(y)"
    }
    func distanceTo(point: Point) -> Double {
        let result: Double = sqrt(pow(self.x - point.x, 2)
                                  + pow(self.y - point.y, 2))
        return Double(round(result * 100) / 100)
    }
    //mutating method
    mutating func moveTo(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
}
var point1 = Point(x: 10, y: 20)
var point2 = Point(x: 30, y: 50)
print(point1.toString())
print("Distance between p1 and p2 : \(point1.distanceTo(point: point2))")
point2.moveTo(x: 99, y: 88)
print("point2 : \(point2)")


//*ENum
enum OnOffSwitch {
    case on, off
    mutating func press() {
        /*
        if self == .on {
            self = .off
        } else if self == .off {
            self = .on
        }
         */
        //use ternary
        self = self == .on ? .off : .on
    }
}
var mySwitch = OnOffSwitch.on
mySwitch.press()
mySwitch.press()
mySwitch.press()
print(mySwitch)


//*Struct: Planet
struct Planet {
    private static let planets:[String] = ["mercury", "venus", "earth",
                            "mars", "jupiter", "saturn",
                            "uranus", "neptune"]
    static subscript(i: Int) -> String {
        return planets[i]
    }
}
var planet1 = Planet[0]
var planet3 = Planet[4]
print(planet3)