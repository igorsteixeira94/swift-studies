// Optional nos permitem representar a ausencia de um valor de maneira clara e inequívoca.

let age: Int? = 30

print("O valor é \(age)") // O valor é Optional(30)

// Para usar realmente o valor, se existir, devemos fazer o 'unwrapping':

if let age = age {
    print("O valor é \(age)") // O valor é 30
}

func returnAge(_ age: Int?) {
    guard let age = age else { return; }
    print("O valor é \(age)") // O valor é 30
}
returnAge(age)

// Forçar 'unwrapping' com !

let str = "5"
let num = Int(str) // "Optional(5)"
let num1 = Int(str)! // "5"

// 'unwrapping' - Optional implicitly
let ageForce: Int! = nil // nesse caso não precisamos usar if let ou guard.

// Nil coalescing
func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

let user = username(for: 15) ?? "Anonymous" // Anonymous

// Optional chaining ?
let names = ["John", "Paul", "George", "Ringo"]
let beatle = names.first?.uppercased() // Optional("JOHN")

// Tramento de exeções

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
    print("You can't use that password.")
}

// Failable initializers

struct Person {
    var id: String

    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}

// TypeCasting

class Animal { }
class Fish: Animal { }

class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}

let pets = [Fish(), Dog(), Fish(), Dog()]

for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}
