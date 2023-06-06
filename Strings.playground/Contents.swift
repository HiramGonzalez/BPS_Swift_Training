import UIKit

import Foundation

var funWithStrings = UIImage(named: "kittenWithOrangeString.jpg")

let myFirstString = "mo 💵"
let mySecondString = "mo problems"

//String concatenation
let theThruth = myFirstString + ", " + mySecondString

//Emoji characters
let similarTruth = "💰 can't buy my ❤️"

// String interpolation
var doggyDiet = "Lulu eats 25 lbs of dog Food per month"
var dogName = "Ferris"
var ferrisPic = UIImage(named: "SpringerdoodleFerris.jpg")
doggyDiet = "\(dogName) eats 25 lbs of dog food per month"

// Strings with variables and expression
var lbsPerDay = 0.75
var daysPerMonth: Double = 30.0
doggyDiet = "\(dogName) eats \(lbsPerDay * daysPerMonth) of dog food per month"

lbsPerDay = 0.25
dogName = "Lil Frankie"
doggyDiet = "\(dogName) eats \(lbsPerDay * daysPerMonth) of dog food per month"
