// Classes são semelhantes a structs mas possuem algumas diferenças.

// 1 - Não possui init de default, deve ser criado toda vez

class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
    
    func makeNoise() {
        print("Woof!")
    }
}

let myDog = Dog(name: "Tchito", breed: "Vira Lata")

myDog.makeNoise() // Woof!

// 2 - Herança, podemos herdar as propriedades e métodos de outras classes. Caso não queira que uma classe seja herdada, utilize o final antes do class

class ViraLata: Dog {
    init(name: String) {
        super.init(name: name, breed: "Vira Lata")
    }
    
    override func makeNoise() {
        print("Yip!")
    }
}

let dog = ViraLata(name: "Doguinho")
dog.makeNoise() // Yip!

// 3 - Na aula passada vimos que as structs são value type, já as classes são reference type ou seja a original e a copia sempre são apontar para o mesmo lugar na memória.


// 4 - Uso de denicializadores
class Person {
    var name = "John Doe"

    init() {
        print("\(name) is alive!")
    }
    
    deinit { // Chamado quando a instancia de Person estiver sendo "retirada da memória."
        print("\(name) is no more!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}

// 5 - Diferente das structs, nas classes  podemos alterar uma propriedade mesmo a instancia dessa classe sendo let

class Animal {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

let person = Animal(name: "Jacaré")
print(person.name)
person.name = "Lagartixa"
print(person.name)
