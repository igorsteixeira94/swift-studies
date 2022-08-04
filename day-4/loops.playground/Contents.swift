// for

let count = 1...10

for number in count {
    print("Number is \(number)")
}

let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}

// while

var number = 1

while number <= 20 {
    print(number)
    number += 1
    if number == 4 {
        print("I'm bored. Let's go now!")
        break // exit loop.
    } else {
        continue
    }
}

number = 1
repeat { // condição chegada apenas depois do fluxo
    print(number)
    number += 1
} while number <= 20

// exit multiples loops
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}
