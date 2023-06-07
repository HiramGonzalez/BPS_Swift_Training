import UIKit

import Foundation

var password = "Meet me in St Louis"
for character in password {
    if character == "e"{
        print("Found an e!")
    } else {
        
    }
}

// Replacing ocurrences
let newPassword = password.replacingOccurrences(of: "e", with: "3")
print(newPassword)
