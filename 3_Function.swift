
//Todo: Function 
//*1. function that no value
func hello(name: String){
    print("Hello \(name)")
}
hello(name: "world")

//*2. function that return value: trả về giá trị
func getFullName(firstName: String, lastName: String) -> String?{
    return "\(firstName) \(lastName)"
}
print(getFullName(firstName: "Tran", lastName: "Viet"))


//*3.Function with return an enumeration: Kiểu liệt kê
enum MarkLevel{
    case bad, normal, good, veryGood, excellent
}
func getMark(_ mark: Float) -> MarkLevel {
    if mark < 5 && mark >= 0 {
        return MarkLevel.bad
    } else if mark >= 5 && mark < 6 {
        return MarkLevel.normal
    } else if mark >= 6 && mark < 7 {
        return .good
    } else if mark >= 7 && mark < 9 {
        return .veryGood
    } else if mark >= 9 && mark <= 10 {
        return .excellent
    }
    return .unknown
}
//print(getMark(mark: 6.23))
print(getMark(6.5)) //no labeled arguments


//*4.Function that return tuple: trả về giá trị tuple
func startEnd(numbers: [Float]) -> (start: Float, end: Float) {
    var currentStart:Float = 0.0
    var currentEnd:Float = 0.0
    if numbers.count == 1 {
        currentStart = numbers[0]
        currentEnd = numbers[0]
    } else if numbers.count > 1 {
        currentStart = numbers[0]
        currentEnd = numbers[numbers.count - 1]
    }
    return (currentStart, currentEnd)
}
print(startEnd(numbers: [4.5, 6.8, 9.3, 2.4]))

func rectangleArea(width: Float, height: Float = 0.0) -> Float {
    width * height
}
print("area = \(rectangleArea(width: 10, height: 20))")
print("area = \(rectangleArea(width: 10))")

//*5.Kiểu dữ liệu biến thiên
//variadic parameters
func getTotal(numbers: Double...) -> Double {
    var total:Double = 0.0
    for number in numbers {
        total += number
    }
    return total
}
print(getTotal(numbers: 1,3,5,7,9)) //Tong

//*6.inout parameter: tham số đầu vào
func changeSomething(xx: inout Int) {
    xx = 12
}
var aa = 33
print(aa)
changeSomething(xx: &aa)
print(aa)

//*7.function type, like "delegate" in C#:
//loại chức năng, như "đại biểu" trong C#
func add2Numbers(_ a: Int,_ b: Int) -> Int{
    return a + b
}
var functionA:(Int, Int) -> Int = add2Numbers(_:_:)
print(add2Numbers(1, 2))


//*8.built in function: được xây dựng trong chức năng
//* Map 2 arrays : ánh xạ 2 mảng
let someNumbers: [CGFloat] = [2, 5, 6, 7, 8, 9] //Core Graphics Float
let squaredNumbers = someNumbers.map {
    //this is anonymous function / closures
    return Int(pow($0, 2))
}
print(squaredNumbers)  // 4 25 36 49 64 81 

//*9.short hand: Sắp xếp
var reversedNames = names.sorted {
    //closure / anonymous function with 2 parameters
    return $1 < $0
}
print(reversedNames)


//*10. closure as a parameter: 
func doSomeBigTasks(input x: Int,
                    completion: (String) -> Void,
                    onFailure: (String) -> Void) {
    //do some works here
    print("do some tasks")
    if(x == 10) {
        completion("This is result")
    } else {
        onFailure("Result failed")
    }
}
doSomeBigTasks(input: 22) { stringResult in
    print("Yes, finished")
    print(stringResult)
} onFailure: { errorResult in
    print("Yes, finished, but failed")
    print(errorResult)
}