
//Todo: 1.While
var i = 0
while(i < 10){
    i = i + 1
    if(i == 4) {
        break
    }
   if i % 2 == 0 {
       continue    //bo qua 
   }
    print(i)
}

//Todo: 2.repeat - while, another way: Giống While
i = 0
repeat {
    print("i = \(i)")
    i = i + 1
} while(i < 5)

//Todo: 3.Marks
let marks:Float = 9.0
switch marks {
    case 0:
        print("very bad, you do nothing")
    case 0..<4:
        print("Quite bad")
    case 4..<5:
        print("You must work harder to pass this Exam")
    case 5..<7:
        print("Normal")
    case 7..<9:
        print("Good")
    case 9...10:
        print("Excellent")
    default:
        print("Not a valid mark")
}

//Todo: 4.
let point = (4, 5) //this is a tuple
switch point {
    case let (x, y) where x < 0 && y < 0:
        print("x < 0 and y < 0")
    case let (x, y) where x > 0 && y > 0:
        print("x > 0 and y > 0")
        //fallthrough
    case let (x, y) where x == 0 && y == 0:
        print("x = 0 and y = 0")
    //let's write other cases
    default:
        print("I donot know")
}