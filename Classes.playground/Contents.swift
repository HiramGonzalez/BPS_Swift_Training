import UIKit

class Movie {
    let title: String
    let director: String
    let releaseYear: Int
    
    init(title: String, director:String, releaseYear: Int){
        self.title = title
        self.director = director
        self.releaseYear = releaseYear
    }
}

class MovieArchive {
    var movies: [Movie]
    
    func filterByYear(year: Int) -> [Movie] {
        var filteredArray = [Movie]()
        for movie in movies {
            if movie.releaseYear == year {
                filteredArray.append(movie)
            }
        }
        return filteredArray
    }
    
    init(movies: [Movie]){
        self.movies = movies
    }
}

// Properties of classes

var thursdayNightMovie : Movie = Movie(title: "Point Break", director: "Kathryn Bigelow", releaseYear: 1991)

thursdayNightMovie.title


// type properties & computed properties
class KidsMovie {
    let title : String
    let director: String
    let releaseYear: Int
    var mpaaRating: String
    static let permittedRatings = ["G", "PG"]
    let reviewScores: [Double]
    
    var metaScore: Double {
        get{
            let value = reviewScores.reduce(0) { $0 + $1 } / Double(reviewScores.count)
            return value
        }
    }
    
    init(title: String, director: String, releaseYear: Int, mpaaRating: String, reviewScores: [Double]){
        self.mpaaRating = mpaaRating
        self.title = title
        self.director = director
        self.releaseYear = releaseYear
        self.reviewScores = reviewScores
    }
}

var fridayMigthMovie = KidsMovie(title: "Princess Bride", director: "Rob Reiner", releaseYear: 1987, mpaaRating: "PG", reviewScores: [9, 9.5, 10, 9.5])

fridayMigthMovie.metaScore

// Calling Instance Methods

var princessBride = Movie(title: "The Princess Bride", director: "Rob Reiner", releaseYear: 1987)
var spinalTap = Movie(title: "This is Spinal Tap", director: "Rob Reiner", releaseYear: 1984)
var standByMe = Movie(title: "Stand By Me", director: "Rob Reiner", releaseYear:1986)
var robReinerMovies : [Movie] = [princessBride, spinalTap, standByMe]


// Initialize an instance of the class, movieArchive
var myArchive = MovieArchive(movies: robReinerMovies)

var movies = myArchive.filterByYear(year: 1986)
var firstMovie = movies[0]
print("\(firstMovie.title)")
