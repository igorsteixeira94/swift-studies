// operators

var total = 10 + 20
total += 5
total -= 5
let difference = 20 - 10

let product = 10 * 3
let divided = 10 / 2

let remainder = 10 % 4

// operator overloading - join strings and arrays

let fakers = "Fakers gonna "
let action = fakers + "fake"

let music = ["music 1", "music 2"] + ["music 3", "music 4"]

// comparison
let firstScore = 6
let secondScore = 4

firstScore == secondScore // false
firstScore != secondScore // true

(firstScore < secondScore) // false
firstScore >= secondScore // true
"Taylor" <= "Swift" // false - because strings have a natural alphabetical order

if firstScore + secondScore == 10 && true {
    print("Show")
}

print(firstScore + secondScore == 11 ? "Show" : "Tired") // ternary

if firstScore + secondScore == 11 || false {
    print("Show")
} else {
    print("Tired")
}

let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough // continue for the next case
default: // default in case not all options are mapped
    print("Enjoy your day!")
}

let score = 5

switch score {
case 0..<3: // range case
    print("You failed badly.")
case 3..<5:
    print("You did OK.")
default:
    print("You did great!")
}
