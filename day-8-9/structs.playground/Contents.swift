// Structs - São estruturas de dados do tipo values type, ou seja seus valores são copiados para um novo espaço de memória.

struct Sports {
    var name: String
    var isOlympicSport: Bool
    
    var olympicsStatus: String { // computed properties
        isOlympicSport ? "\(name) é um esporte olimpico" : "\(name) não é um esporte olimpico"
    }
}

let tennis: Sports = .init(name: "Tênis", isOlympicSport: false)

print(tennis.olympicsStatus)

// property observers

struct Progress {
    var task: String
    var amount: Int { // como printar o progresso a cada mudança do amout? Usando property observers
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
    // methods
    func getTask() -> String {
        return "A tarefa sendo executada é \(task)"
    }
    // mutating - método para alterar propriedades
    mutating func changeTask() {
        task = "Correr"
    }
}

var progress: Progress = .init(task: "Processar dados", amount: 0)

progress.amount = 10 // Processar dados is now 10% complete
progress.amount = 50 // Processar dados is now 50% complete
progress.amount = 80 // Processar dados is now 80% complete
progress.changeTask()
print(progress.getTask())

// Iniciadores: Por padrão todas as estruturas vêm com init por default, mas podemos fornecer nossos prorpios iniciadores

struct User {
    private var username: String //controle de acesso, apenas a Struct pode acessar a propriedade
    lazy var sports = Sports(name: "Futebol", isOlympicSport: true) // inicializada apenas quando utilizamos
    static var time: String = "Palmeiras"
    init() {
        username = "Anonimo"
    }
    static func getTime() {
        print("Sou jogador do Palmeiras")
    }
}

// var user = User(username: "Igor Rodrigues") - Com init default
var user = User()
User.getTime()
print(User.time)
// print(user.username) - 'username' is inaccessible due to 'private' protection level
