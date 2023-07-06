//Todo: Kiểu dữ liệu class là reference type: kiểu dữ liệu tham chiếu


class Vehicle {
    //? = can be null
    var speed: Double?
    var color:String?
    //default constructor
    init() {
        speed = 0.0
        color = "white"
    }
    //calculated property: == toSring
    var description: String {
        //?? = default value
        "Speed: \(speed ?? 0.0), color: \(color ?? "white")"
    }
    init(speed: Double, color: String) {
        self.speed = speed
        self.color = color
    }
}

//*Init an object = Khởi tạo đối tượng
let vehicle1 = Vehicle(speed: 12, color: "green")
print(vehicle1.description)


//*1.child/sub class: Lớp Con (Kế Thừa)
class Bicycle: Vehicle {
    var hasBaskit:Bool = true
    var brandName: String? //optional string
    //failable initializer
    convenience init?(speed: Double, color: String,
                      hasBaskit: Bool, brandName:String) {
        if brandName.isEmpty {
            return nil
        }
        self.init(speed: speed, color: color)
        self.hasBaskit = hasBaskit
        self.brandName = brandName
    }
    //Initializer Parameters Without Argument Labels
    convenience init(_ speed: Double,_ color: String,_ hasBaskit: Bool) {
        self.init(speed: speed, color: color)
        self.hasBaskit = hasBaskit
    }
    
    
}
let bicycle1 = Bicycle(speed: 11.22, color: "red",
                       hasBaskit: false, brandName: "lalala")
let bicycle2 = Bicycle(22.3, "blue", true)
dump(bicycle1)
//dump("bicycle2: \(bicycle2)")

//* 2.optional chaining: Gọi đối tượng sử dụng null
class Department {
    var id:Int
    var departmentName: String
    init(departmentId id: Int, departmentName: String) {
        self.id = id
        self.departmentName = departmentName
    }
}
class Employee {
    var id: Int
    var employeeName: String
    var department:Department? //The employee may be in a department or NOT
    init(employeeId id: Int, employeeName: String,
         department: Department?) {
        self.id = id
        self.employeeName = employeeName
        self.department = department
    }
}
let departmentSales:Department = Department(departmentId: 11,
                                            departmentName: "Sales and Marketing")
let mrJohn:Employee = Employee(employeeId: 22, employeeName: "John",
                               department: nil)
//print("mr John's department: \(mrJohn.department?.departmentName)")
//You can use default value
print("mr John's department: \(mrJohn.department?.departmentName ?? "no department")")


