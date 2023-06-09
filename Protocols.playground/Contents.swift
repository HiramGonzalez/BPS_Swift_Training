import UIKit

// Example 1

protocol Souschef {
    func chop(vegetable: String) -> String
    func rinse(vegetable: String) -> String
}

class Roommate: Souschef, Equatable {
    var hungry = true
    var name: String
    
    init(hungry: Bool, name: String){
        self.hungry = hungry
        self.name = name
    }
    
    func chop(vegetable: String) -> String {
        return "She's chopping' \(vegetable)"
    }
    
    func rinse(vegetable: String) -> String {
        return "The \(vegetable) is so fresh and so clean."
    }
}


func ==(lhs: Roommate, rhs: Roommate) -> Bool {
    return lhs.name == rhs.name && lhs.hungry == rhs.hungry
}

var roomie = Roommate(hungry: true, name: "Jennifer")
var otherRoommie = Roommate(hungry: true, name: "Jennifer")

print(roomie == otherRoommie)


// Protocols as a type

class DinnerCrew {
    var members: [Souschef]
    
    init(members: [Souschef]){
        self.members = members
    }
}

class RandomPasserby: Souschef {
    var name: String
    
    init(name: String){
        self.name = name
    }
    
    func chop(vegetable: String) -> String {
        return "She's chopping' \(vegetable)"
    }
    
    func rinse(vegetable: String) -> String {
        return "The \(vegetable) is so fresh and so clean."
    }
}

var newFriend = RandomPasserby(name: "Dave")
var motleyDinnerCrew = DinnerCrew(members: [newFriend, roomie])
