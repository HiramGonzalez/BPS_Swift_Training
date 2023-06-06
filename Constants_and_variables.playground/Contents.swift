import UIKit

import Foundation

let encouragement = "You can do it!"

// Use var when you expect the value to change
var personalizedEncouragement = "You can do it, Lauren!"
personalizedEncouragement = personalizedEncouragement.replacingOccurrences(of: "Lauren", with: "Cameron")
print(personalizedEncouragement)

// Example 2a
let birthYear = 2008
let currentYear = 2015
let age = currentYear - birthYear

// Example 3
let birthWeigth = "6 lbs 7 ounces"
var currentWeigth = "22 lbs"
var chubbyBaby = UIImage(named: "fat-baby-picture.jpg")

// Example 4

let buildingCapacity = 300
var attendance = 220
attendance += 2

// Two ways of being immutable
var goat = UIImage(named: "Chinese-New-Year-3.jpg")
let yearsOfTheGoat = [1967, 1979, 1991, 2003, 2015]
let yearsOfTheSheep = [1967, 1979, 1991, 2003, 2015]


// the following lines will produce error because let values are immutable
// yearsOfTheGoat = yearsOfTheSheep
// yearsOfTheGoat.append(2027)
