import UIKit

// Example 1
let array = ["A", "13", "B", "5", "87", "t", "41"]

class Arithmetic {
    func sumOfStrings(aBunchOfStrings: [String]) -> Int {
        let array = aBunchOfStrings
        var sum = 0
        for string in array {
            if Int(string) != nil {
                let intToAdd = Int(string)!
                sum += intToAdd
            }
        }
        return sum
    }
}

// Example 2

let stringToReverse = "Mutable or Immutable? that is the question"

func reverseString(stringToReverse: String) {
    var reversedString = ""
    for character in stringToReverse {
        reversedString = "\(character)" + reversedString
    }
    print(reversedString)
}

// Using external parameters names

func reverseString2(forwardString stringToReverse: String) -> String {
    var reversedString = ""
    for character in stringToReverse {
        reversedString = "\(character)" + reversedString
    }
    return reversedString
}
