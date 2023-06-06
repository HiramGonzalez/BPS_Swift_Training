import UIKit
import Foundation

let ticketPrice = 7.5
let allowance = 10.0
let iceCreamPrice = 3.0

//var pic = UIImage(named: "Chloe.png")

if allowance == ticketPrice + iceCreamPrice {
    print("Let's go to the movies")
} else {
    print("Let's watch a movie at home and eat cream")
}

// Logical operators

var hungry = true
var vegetarian = false

if hungry {
    print("Let's eat")
} else {
    print("Let's wait")
}

if hungry && !vegetarian{
    print("Let's eat steak")
} else if hungry && vegetarian{
    print("How about pumpkin curry?")
} else {
    print("Nevermind...")
}

var thereIsPie = true
if hungry || thereIsPie {
    print("Let's eat!")
} else {
    print("Let's wait")
}

// Ternary conditional

//if hungry {
//    print("Let's eat")
//} else {
//    print("Let's wait")
//}

// Can be rewritten as a ternary operation
hungry ? print("Let's eat") : print("Let's wait")

//var thereIsPie = true
//if hungry || thereIsPie {
//    print("Let's eat!")
//} else {
//    print("Let's wait")
//}

// Can be rewritten as a ternary operation
hungry || thereIsPie ? print("Let's eat") : print("Let's wait")

// Ternary operator for assigning values
let sandwichPrice = 5.0
var tax = true
var lunchPrice = sandwichPrice + (tax ? 0.5 : 0)
