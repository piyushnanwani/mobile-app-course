
// 1. Variables and Constants
let name: String = "John" // Immutable
var age: Int = 25 // Mutable

// 2. Data Types
let number: Int = 10
let decimal: Double = 10.5
let text: String = "Hello"

// 3. Functions
func greet() {
    print("Hello, World!") // Simple function with no return type
}

// 4. Function with Parameters and Return Type
func sum(a: Int, b: Int) -> Int {
    return a + b // Returns sum of a and b
}

// 5. Conditionals (if-else)
func checkAge(age: Int) {
    if age >= 18 {
        print("Adult")
    } else {
        print("Minor")
    }
}

// 6. Switch Statement (Switch-case equivalent)
func getGrade(score: Int) -> String {
    switch score {
    case 90...100:
        return "A"
    case 80...89:
        return "B"
    case 70...79:
        return "C"
    default:
        return "F"
    }
}

// 7. Loops (for loop)
func printNumbers() {
    for i in 1...5 {
        print(i) // Prints numbers 1 to 5
    }
}

// 8. Loops (while loop)
func countDown() {
    var i = 5
    while i > 0 {
        print(i)
        i -= 1 // Decrement i
    }
}

// 9. Arrays
let fruits = ["Apple", "Banana", "Cherry"]
print(fruits[0]) // Accessing elements

// 10. Lists (Array is List equivalent)
var numbers = [1, 2, 3, 4]
numbers.append(5) // Adding an element

// 11. Optionals (Null Safety)
var nullableName: String? = "John"
nullableName = nil // Nullable type

// 12. Optional Chaining (Safe Call Operator)
let length = nullableName?.count // Returns length if not null

// 13. Nil-Coalescing Operator (Elvis Operator)
let lengthOrDefault = nullableName?.count ?? 0 // Returns 0 if null

// 14. Classes
class Car {
    let brand: String
    var speed: Int

    init(brand: String, speed: Int) {
        self.brand = brand
        self.speed = speed
    }

    func accelerate() {
        speed += 10
    }
}

// 15. Inheritance
class Animal {
    let name: String

    init(name: String) {
        self.name = name
    }

    func makeSound() {
        print("Animal Sound")
    }
}

class Dog: Animal {
    func bark() {
        print("Woof!")
    }
}

// 16. Protocols (Interfaces)
protocol Drivable {
    func drive()
}

class Bicycle: Drivable {
    func drive() {
        print("Pedaling...")
    }
}

// 17. Structs (Data Classes equivalent)
struct User {
    let id: Int
    let name: String
}

// 18. Static Methods (Companion Object equivalent)
class MyClass {
    static func create() -> MyClass {
        return MyClass()
    }
}

// 19. Extensions (Extension Functions)
extension String {
    func reverse() -> String {
        return String(self.reversed())
    }
}

// 20. Closures (Unique to Swift)
let closure = {
    print("This is a closure!") // Anonymous function (closure)
}
closure()

// 21. Higher-Order Functions
func operateOnNumbers(a: Int, b: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(a, b) // Function as a parameter
}

// 22. Closures (Lambda Expressions equivalent)
let sum = { (x: Int, y: Int) -> Int in x + y } // Inline anonymous function

// 23. Enums with Associated Values (Sealed Classes equivalent)
enum Result {
    case success(data: String)
    case error(message: String)
}

// 24. Singleton Pattern
class Database {
    static let shared = Database()
    private init() {}
    let name = "MyDB"
    func connect() {
        print("Connected to \(name)")
    }
}

// 25. Nested Classes
class Outer {
    class Nested {
        func show() -> String {
            return "Inside Nested class"
        }
    }
}

// 26. Inner Classes
class OuterClass {
    private let name = "Outer"

    class InnerClass {
        func getName(outer: OuterClass) -> String {
            return outer.name // Accesses Outer class property
        }
    }
}

// 27. Type Aliases
typealias Username = String
let user: Username = "john_doe"

// 28. Generics in Functions
func printItem<T>(item: T) {
    print(item) // T can be any type
}

// 29. Generics in Classes
class Box<T> {
    var item: T
    init(item: T) {
        self.item = item
    }
    func getItem() -> T {
        return item
    }
}

// 30. Static Methods as Factory
class FactoryClass {
    private init() {}
    static func create() -> FactoryClass {
        return FactoryClass()
    }
}

// 31. Recursive Functions
func factorial(n: Int) -> Int {
    if n == 1 {
        return 1
    } else {
        return n * factorial(n: n - 1) // Recursive function
    }
}

// 32. Copy Function in Structs
struct Person {
    let name: String
    var age: Int
}

let person1 = Person(name: "John", age: 25)
var person2 = person1
person2.age = 30 // Creates a copy with modified age

// 33. Lazy Initialization
lazy var lazyVar: String = "Initialized"
func useLazyVar() {
    print(lazyVar)
}

// 34. Property Observers (Delegated Properties equivalent)
var delegatedVar: String = "<no name>" {
    didSet {
        print("Name changed from \(oldValue) to \(delegatedVar)")
    }
}

// 35. Try-Catch Block
func divide(a: Int, b: Int) -> Int {
    do {
        return try a / b
    } catch {
        return 0 // Returns 0 if division by zero occurs
    }
}

// 36. Multiple Catch Blocks
func multipleCatchDemo() {
    do {
        // Some risky operation
    } catch let error as NSError {
        print("Caught error: \(error)")
    }
}

// 37. Defer Statement (Finally Block equivalent)
func deferDemo() {
    defer {
        print("This will always execute")
    }
    // Some operation
}

// 38. Abstract Classes with Protocols
protocol Polygon {
    func draw() // Abstract method equivalent
}

class Rectangle: Polygon {
    func draw() {
        print("Drawing a rectangle")
    }
}

// 39. Enum with Raw Values (Enum Classes equivalent)
enum Direction: String {
    case north = "NORTH"
    case south = "SOUTH"
    case east = "EAST"
    case west = "WEST"
}

// 40. Inline Closures
func inlineFunctionDemo(action: () -> Void) {
    action() // Inline closure example
}
