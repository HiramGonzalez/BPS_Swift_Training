import UIKit

enum PrimaryColor {
    case red
    case bliue
    case yellow
}


enum Aunties {
    case Aime, Billie, Diane, Gail, Janie, Pam
}

enum AmericanLeagueWest : String {
    case As = "Oakland"
    case Astros = "Houston"
    case Angels = "Los Angeles"
    case Mariners = "Seattle"
    case Rangers = "Arlington"
}

var message = "I hope the As stay in \(AmericanLeagueWest.As.rawValue)"
print(message)


// enums and switch
enum CaliforniaPark {
    case Yosemite, DeathValley, Lasson, Sequoia
}

var warning = ""
var destination = CaliforniaPark.Yosemite

switch destination {
case .Yosemite:
    warning = "Beware of aggressive bears."
case .DeathValley:
    warning = "Beware of aggressive dehydration."
case .Lasson:
    warning = "Watch out for boiling pools!"
case .Sequoia:
    warning = "Watch out for falling trees!"
}
