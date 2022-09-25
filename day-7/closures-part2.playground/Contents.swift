
// closures como parametro e que recebe parametros, mas não retorna nada

func travel(action: (String) -> Void ) {
    print("Eu tô me preparando para ir")
    action("London")
    print("Eu cheguei!!")
}

travel { (place: String) in
    print("Destino é \(place)")
}

// closures como parametro e que recebe parametros, e retorna algo

func travel(action: (String) -> String) {
    print("Eu tô me preparando para ir")
    print(action("London"))
    print("Eu cheguei!!")
}

travel { (place: String) -> String in
    "Tô indo pra \(place)"
}

// O swift sabe que o parametro da closure deve ser string e o retorn tbm

travel { place in
    "Tô indo pra \(place)"
}

// resumindo ainda mais
travel {
    "Tô indo pra \($0)"
}

// Com multiplos fechamentos
func travel(action: (String, Int) -> String) {
    print("Eu tô me preparando para ir")
    print(action("London", 100))
    print("Eu cheguei!!")
}

travel {
    "Indo para \($0) a \($1) KM/H"
}

// Retornando Closures

func travel() -> (String) -> Void {
    var counter = 1

    return {
        print("\(counter). I'm going to \($0)")
        counter += 1 // A closure captura a variavel
    }
}

let result = travel()

result("Londom")
result("Londom")
result("Londom")
