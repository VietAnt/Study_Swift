//Todo: Basic: Variable, Function,...Biến - Hàm
//Todo: Dictionaries:
//Todo: Tuples: 
//Todo: Enum:
//Todo: Object:
//Todo: Struct
//Todo: Class:
//Todo: So sánh Struct - Class
//Todo: Working with Async/Await: Bất đồng bộ

import UIKit
import Foundation

//1. Cú pháp đầu tiên
var x:float = 10 //this is a varibale

//2. let = const
let PI = 3.14

var a = 1, b = 2, c = 3
print("a: \(a), b: \(b), c: \(c)")
print("integer has min = \(Int.min), max = \(Int.max)")

//3.dump = print - show object detail
let y =  x * x
dump(y)
let y = pow(x, 3)
dump(y)
print(y)

//4. true - false
let cardNumber = 1356_2357_1156_2236
let hasCar = false
print(hasCar)

//5.If-else: dieu kien
if (hasCar = true){
    print("Yes, I have a car")
}else{
    print("No, I have not any car")
}

//Todo: 6: ! = not

//Todo: Khai báo 2 biến => a tuple: ghép nhiều giá trị trong 1 đối tượng
let (x, y) = (2, 4)
print("x = \(x), y = \(y)")
print("x = "+ String(x) + ", y = "+ String(y))
var a = 4
print(a * 2 + 1)

//7: Khai báo kiểu String
let name:String = "Hoang"
let age:Int  = 18
let description = "Name is \(name), age is \(age)"

//Todo: 8: Array - List: mảng
var names:[String] = ["John", "Jack", "Tim", "Elon", "Nick" ]
print("Tổng số là: \(names.count)")
print(names[0]) //-> John

//duyet_1_mang: iterate an aray: 
for i in 0..<names.count{
    print("\(i) - \(names[i])")
}
//-> 0- John, 1-Jack, 2-Tim, 3-Elon, 4-Nick
for i in 0..3{
    print("\(i) - \(names[i])")
}
//-> 0- John, 1-Jack, 2-Tim, 3-Elon

let someOtherFriends = ["Anna", "Taylor"]
names += someOtherFriends
names.insert("Hoang", at: 0)
names.insert("Linh", at: names.count)
print(names)
//enumerayed() -> a tuple
print("iterate with index")
for(index, name) in names.enumerated(){
    print("index: \(index), name: \(name)")
}
//How to find "Anna" ?
var filteredNames = names.filter{name in
   return name.lowercased() == "Anna"
}
dump(filteredNames)

//How find names with length > 3
filteredNames = names.filter{ name in
  return name.count > 4
}

//delete element with name = 'Taylor'
names = names.filter{ name in
   return name.lowercased() != "taylor"
}

//add 2 item with same value
names.insert("Hoang", at: 0)
names.insert("Loan", at:0)

//Todo: 10.someComments
let someComments = """
     Good, I like it,
     OK, let me check
     Please do it yourself
"""
print(someComments);

//Todo: 11.Set: Tập Hợp: Ko được chứa 2 giá trị trùng nhau
var fruits:Set<String> = ["Orange", "Lemon", "Pineapple","Apple","Kiwwi"]
print(fruits)
fruits.insert("Apple")//your cannot add the same value to a "set"
print(fruits)

//Duyệt: Set
for (i, fruit) in fruits.enumerated() {
    print("i = \(i), fruit: \(fruit)")
}

//Giao: 2 Set
let setA:Set<Int> = [1, 3, 4, 5, 6, 9]
let setB:Set<Int> = [15, 23, 4, 5, 88, 77]
print(setA.intersection(setB))
print("differences: \(setA.symmetricDifference(setB))")
print("union: \(setA.union(setB))")
print("count: \(setA.union(setB).count)")


//Todo: 12.Dictionary: Kiểu key-value = Object (JavaScript)
var user:[String: Any] =[
    "name": "Hoang",
    "age": 18,
    "email": "vietanh@gmail.com"
]
dump(user)
if(!user.isEmpty){
    print("The objetc is ko rỗng not empty")
}
user["address"] = "Bach Mai street, HaNoi, VietNam"
user["email"] = nil  //remove a key (gia tri)

//Update a Key
user["age"] = 20
dump(user)

//kiem tr gia tri tra ve
if let oldAge = user.updateValue(20, forKey: "age") {
    print("The old value of age is: \(oldAge)")
}

//In ra gia tri
for (key, value) in user {
    print("key = \(key), value = \(value)")
}
print(user.keys)
print(user.values)