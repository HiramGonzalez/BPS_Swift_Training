import UIKit

// sort()

var bids = [48, 75, 63, 52, 68]
var orderedBids = bids.sort( by: {(bid1: Int, bid2: Int) -> Bool in
    return bid2 > bid1
})
print(orderedBids)


var birthYears = [2004, 2011, 2007, 2005, 2002]
var reverseChrologicalYears = birthYears.sorted(by: {(year1: Int, year2: Int) -> Bool in
    return year1 > year2
})


// Example 2

var soups = ["tomato", "hot and sour", "french onion", "vegetable"]
var sortedSoups = soups.sort(by: {(soup1: String, soup2: String) -> Bool in
    return soup2 > soup1
})


// Example 3

var myGrades = [81, 99, 54, 84, 98]
var myFailingGrades = myGrades.filter({(grade: Int) -> Bool in
    return grade >= 70
})

// Short hand version
// We repleace the single argument with $0, skip the data types and return reserved word
myFailingGrades = myGrades.filter({
    $0 >= 70
})

sortedSoups = soups.filter({ (soup1, soup2 ) in
    soup2 > soup1
})
