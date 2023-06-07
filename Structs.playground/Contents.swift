import UIKit

struct Beer {
    var style = "Pale Ale"
    var percentAlcohol = 5
    static var cheersDict = ["English": "Cheers!","German": "Prost!", "Japanese": "乾杯", "Mandarin": "干杯!","Russian":"На здоровье!", "Spanish":"Salud!", "Italian": "Cin cin!"]
    
    var suggestedVolumePerServing: String {
        get{
            return "\(12/(percentAlcohol/5)) ounces"
        }
    }
    
    static func cheers(language: String){
        if let cheers = cheersDict[language] {
            print("\(cheers)")
        }
    }
}

var happyHourBeer = Beer(style: "Lager", percentAlcohol: 6)
happyHourBeer.suggestedVolumePerServing
Beer.cheers(language: "Japanese")


// Differences between structs and classes

struct PictureFrame {
    var width: Int
    var height: Int
    var thickness: Double
}

var frame = PictureFrame(width: 3, height: 5, thickness: 0.5)
var frameForMom = frame
frameForMom.width = 5
frameForMom.height = 7
print(frame.width)
print(frame.height)


// Class

class ClassyPictureFrame {
    var width = 5
    var height = 7
    var thickness : Double = 0.5
    
    var area: Double {
        get {
            return Double((width * height)/2)
        }
    }
    
    init(width: Int, height: Int, thickness: Double){
        self.width = width
        self.height = height
        self.thickness = thickness
    }
}

var classyFrame = ClassyPictureFrame(width: 3, height: 5, thickness: 0.5)

var classyFrameForMom = classyFrame
classyFrameForMom.width = 5
classyFrameForMom.height = 7
print(classyFrame.width)
print(classyFrame.height)
