//Extensions = Add more methods to an existing class
import SwiftUI
let color1 = Color(red: 1.0, green: 0.0, blue: 0.0)

extension Color {
    init(_ red: Double, _ green: Double, _ blue: Double) {
        self.init(red: red, green: green, blue: blue)
    }
}
let color2 = Color(1.0, 0.0, 0.0)
print(color1)
print(color2)