// protocols = É uma descrição do que queremos, em vez de algo que podemos criar e usar diretamente.

protocol Identifiable {
    var id: String { get set }
}

struct User: Identifiable {
    var id: String
}

func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}

// protocols podem herdar outros protocols

protocol Login: Identifiable {
    func login(user: String)
}

struct LoginUser: Login {
    var id: String
}

// extensions: Permite adicionar métodos a tipos já existentes

extension LoginUser {
    func logout() {
        print("Deslogado")
    }
}

extension Int {
    func double() -> Int {
        self * 2
    }
}

let age = 50

print(age.double())

// Podemos implementar os métodos definidos em um protocolo

extension Login {
    func login(user: String) {
        print("Usuário é \(user)")
    }
}

let user = LoginUser(id: "12")

user.login(user: "Igor")
