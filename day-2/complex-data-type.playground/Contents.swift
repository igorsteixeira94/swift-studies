// arrays
let beatles = ["John Lennon",
               "Paul McCartney",
               "George Harrison",
               "Ringo Starr"]

beatles[0]
beatles.first
beatles.last

// sets

let colors: Set<String> = Set(["red", "blue", "yellow", "blue"])
/* Items saved in any order. All items must be unique */

// Tuples
let name = (first: "Igor", age: 28)

name.first

// Dictionaries

var foods = [
    "Rice": 1.78,
    "Sugar": 1.90]

foods["apple"] = 3.20

foods.first?.key
foods.first?.value

// Enums

enum Result {
    case success
    case failure(error: String)
}

enum Planet: Int {
    case mercury = 1
    case venus
    case earth
}

let resultv4 = Result.failure(error: "404")
let planet = Planet(rawValue: 3)
