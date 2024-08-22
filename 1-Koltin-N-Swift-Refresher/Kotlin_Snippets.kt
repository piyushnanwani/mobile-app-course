
// 1. Variables and Constants
val name: String = "John" // Immutable
var age: Int = 25 // Mutable

// 2. Data Types
val number: Int = 10
val decimal: Double = 10.5
val text: String = "Hello"

// 3. Functions
fun greet() {
    println("Hello, World!") // Simple function with no return type
}

// 4. Function with Parameters and Return Type
fun sum(a: Int, b: Int): Int {
    return a + b // Returns sum of a and b
}

// 5. Conditionals (if-else)
fun checkAge(age: Int) {
    if (age >= 18) {
        println("Adult")
    } else {
        println("Minor")
    }
}

// 6. When Expression (Switch-case equivalent)
fun getGrade(score: Int): String {
    return when(score) {
        in 90..100 -> "A"
        in 80..89 -> "B"
        in 70..79 -> "C"
        else -> "F"
    }
}

// 7. Loops (for loop)
fun printNumbers() {
    for (i in 1..5) {
        println(i) // Prints numbers 1 to 5
    }
}

// 8. Loops (while loop)
fun countDown() {
    var i = 5
    while (i > 0) {
        println(i)
        i-- // Decrement i
    }
}

// 9. Arrays
val fruits = arrayOf("Apple", "Banana", "Cherry")
println(fruits[0]) // Accessing elements

// 10. Lists
val numbers = listOf(1, 2, 3, 4)
val mutableNumbers = numbers.toMutableList()
mutableNumbers.add(5) // Adding an element

// 11. Null Safety
var nullableName: String? = "John"
nullableName = null // Nullable type

// 12. Safe Call Operator
val length = nullableName?.length // Returns length if not null

// 13. Elvis Operator
val lengthOrDefault = nullableName?.length ?: 0 // Returns 0 if null

// 14. Classes
class Car(val brand: String, var speed: Int) {
    fun accelerate() {
        speed += 10
    }
}

// 15. Inheritance
open class Animal(val name: String) {
    fun makeSound() {
        println("Animal Sound")
    }
}

class Dog(name: String) : Animal(name) {
    fun bark() {
        println("Woof!")
    }
}

// 16. Interfaces
interface Drivable {
    fun drive()
}

class Bicycle : Drivable {
    override fun drive() {
        println("Pedaling...")
    }
}

// 17. Data Classes
data class User(val id: Int, val name: String)

// 18. Companion Object
class MyClass {
    companion object {
        fun create(): MyClass = MyClass()
    }
}

// 19. Extension Functions
fun String.reverse(): String {
    return this.reversed()
}

// 20. Coroutines (Unique to Kotlin)
import kotlinx.coroutines.*

fun main() = runBlocking {
    launch {
        delay(1000L)
        println("Coroutine!") // Runs after 1 second
    }
}

// 21. Higher-Order Functions
fun operateOnNumbers(a: Int, b: Int, operation: (Int, Int) -> Int): Int {
    return operation(a, b) // Function as a parameter
}

// 22. Lambda Expressions
val sum = { x: Int, y: Int -> x + y } // Inline anonymous function

// 23. Sealed Classes
sealed class Result
class Success(val data: String): Result()
class Error(val message: String): Result()

// 24. Singleton Object
object Database {
    val name = "MyDB"
    fun connect() {
        println("Connected to $name")
    }
}

// 25. Nested Classes
class Outer {
    class Nested {
        fun show() = "Inside Nested class"
    }
}

// 26. Inner Classes
class OuterClass {
    private val name = "Outer"

    inner class InnerClass {
        fun getName() = name // Accesses Outer class property
    }
}

// 27. Type Aliases
typealias Username = String
val user: Username = "john_doe"

// 28. Generic Functions
fun <T> printItem(item: T) {
    println(item) // T can be any type
}

// 29. Generic Classes
class Box<T>(var item: T) {
    fun getItem(): T = item
}

// 30. Companion Object as Factory
class FactoryClass private constructor() {
    companion object {
        fun create(): FactoryClass = FactoryClass()
    }
}

// 31. Tail Recursion
fun factorial(n: Int, accumulator: Int = 1): Int {
    return if (n == 1) accumulator else factorial(n - 1, n * accumulator) // Recursive function
}

// 32. Data Class Copy Function
data class Person(val name: String, val age: Int)
val person1 = Person("John", 25)
val person2 = person1.copy(age = 30) // Creates a copy with modified age

// 33. Lateinit Keyword
lateinit var lateinitVar: String
fun initLateinitVar() {
    lateinitVar = "Initialized"
}

// 34. Delegated Properties
import kotlin.properties.Delegates

var delegatedVar: String by Delegates.observable("<no name>") {
    _, old, new -> println("Name changed from $old to $new")
}

// 35. Try-Catch Block
fun divide(a: Int, b: Int): Int {
    return try {
        a / b
    } catch (e: ArithmeticException) {
        0 // Returns 0 if division by zero occurs
    }
}

// 36. Exception Handling with Multiple Catch Blocks
fun multipleCatchDemo() {
    try {
        // Some risky operation
    } catch (e: IOException) {
        println("IO Exception")
    } catch (e: Exception) {
        println("General Exception")
    }
}

// 37. Finally Block
fun finallyDemo() {
    try {
        // Some operation
    } finally {
        println("This will always execute")
    }
}

// 38. Abstract Classes
abstract class Polygon {
    abstract fun draw() // Abstract method
}

class Rectangle: Polygon() {
    override fun draw() {
        println("Drawing a rectangle")
    }
}

// 39. Enum Classes
enum class Direction {
    NORTH, SOUTH, EAST, WEST
}

// 40. Inline Functions
inline fun inlineFunctionDemo(action: () -> Unit) {
    action() // Inline function example
}
