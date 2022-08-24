// create function in swift, start with the 'func'

func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory...
"""
    print(message)
}

printHelp()

// functions with parameters and return values
func square(number: Int) -> Int {
    number * number
}

square(number: 8)

// parameter label and default value
func sayHello(to name: String = "Igor") {
    print("Hello, \(name)!")
}
sayHello(to: "Joe")
sayHello()

// omitting parameter
func greet(_ person: String) {
    print("Hello, \(person)!")
}

// variadic functions
func square(numbers: Int...) {
    for number in numbers {
        print("\(number) square is \(number * number)")
    }
}

square(numbers: 2,3,4)

// return error

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    
    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password")
}
try checkPassword("12345")

// change value parameters

var number = 2

func doubleInPlace(number: inout Int) {
    number *= 2
}

doubleInPlace(number: &number)

print(number) // 4
