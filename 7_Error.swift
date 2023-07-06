//* Erorr handling: Xử lý lỗi
enum CalculationError: Error {
    case divideByZero(message: String)
    case valueTooBig(message:String, maximum: Double)
    //other case....
}
func divide2Numbers(number1: Double, number2: Double) throws -> Double {
    if number2 == 0 {
        throw CalculationError.divideByZero(message: "Cannot divide by zero")
        //you can customize your error object here
    }
    guard number1 < 1_000_000 && number2 < 1_000_000 else {
        throw CalculationError.valueTooBig(message: "Value is too big", maximum: 1_000_000)
    }
    return number1 / number2
}
do {
    //try print("3 / 0 is : \(divide2Numbers(number1: 3, number2: 0))")
    try print("3000000 / 1000000 is : \(divide2Numbers(number1: 3000000, number2: 1000000))")
} catch CalculationError.valueTooBig(let message,let maximum) {
    print("Reason: \(message), maximum: \(maximum)")
}