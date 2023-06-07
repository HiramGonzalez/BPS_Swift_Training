import UIKit

// Practice writing functions

func firstCharacterOf(anotherword word: String) -> Character {
    return word[word.startIndex]
}

print(firstCharacterOf(anotherword: "Mom"))



// Example 2

func placeFirstLetterLast(myString: inout String) -> String {
    myString.append(firstCharacterOf(anotherword: myString))
    myString.remove(at: myString.startIndex)
    return myString
}

var wordToChange = "Mom"
print(placeFirstLetterLast(myString: &wordToChange))


// Example 3

class MovieArchive {
    func filterByYear(year: Int, movies: Dictionary<String, Int>) -> [String] {
        var filteredArray = [String]()
        for (movie, releaseYear) in movies {
            if releaseYear == year {
                filteredArray.append(movie)
            }
        }
        return filteredArray
    }
}

var aiThemedMovies = ["Metropolis":1927, "2001: A Space Odyssey":1968, "Blade Runner":1982, "War Games" : 1983, "Terminator": 1984, "The Matrix":1999, "A.I.":2001, "Her": 2013, "Ex Machina":2015]


var object = MovieArchive()
print(object.filterByYear(year: 1983, movies: aiThemedMovies))
