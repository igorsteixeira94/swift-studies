// simple closure example

let driving = {
    print("I'm driving in my car")
}

driving() // I'm driving in my car

print(type(of: driving)) // () -> ()

// parameter in closures

let drivingWithParameter = { (place: String) in
    print("I'm going to \(place) in my car")
}

drivingWithParameter("Bahia") // I'm going to Bahia in my car

print(type(of: drivingWithParameter)) // (String) -> ()

// return in closures

let drivingWithReturn = { (place: String) -> String in
    "I'm going to \(place) in my car"
}

let message = drivingWithReturn("Bahia")

print(message) // I'm going to Bahia in my car

print(type(of: drivingWithReturn)) // (String) -> String

//closures with parameter


func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel(action: driving)
travel {
    print("I'm driving in my car")
}

func travelParameter(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("Bahia")
    print("I arrived!")
}

travelParameter(action: drivingWithParameter)
travelParameter { (place: String) in
    print("I'm going to \(place) in my car!!!...")
}

travelParameter { place in // omitting type
    print("I'm going to \(place) in my CARR!!!....")
}

// clousure with multiple parameters

func travel(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("Bahia", 100)
    print("\(description)\nI arrived!")
}

travel {
    "I'm going to \($0) at \($1) miles per hour."
}

func travel() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travel()
result("London")

travel()("LONDON")
