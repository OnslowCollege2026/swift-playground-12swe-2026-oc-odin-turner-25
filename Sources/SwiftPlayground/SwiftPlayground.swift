// The Swift Programming Language
// https://docs.swift.org/swift-book
func showWelcome() {
    print("Welcome")
    
}

func printTitle() {
    print("Room Calculator")
}

func printDivider() {
    print("------------------")
    
}



func readNumber(prompt: String) -> Double {
    print(prompt)
    var returnValue  = -1.0
    guard let input = readLine(), let number = Double(input), number > 0 else{
        print("Invalid number")
        return readNumber(prompt: prompt)
    }
    returnValue = number
    return returnValue 
}


@main
struct SwiftPlayground {


    static func main() {  
        let maximumItemVolume = 2.0 

        let roomLength = readNumber(prompt: "Enter the room Length:")
        let roomWidth = readNumber(prompt: "Enter the room Width:")
        let roomHeight = readNumber(prompt: "Enter the room Height:")

        let roomArea = roomLength * roomWidth
        let roomVolume = roomArea * roomHeight
        
        print("Room area: \(roomArea)m²") 
        print("Room volume: \(roomVolume)m³")
        
        let furnitureVolumes = [1.2, 0.8, 2.5, 0.6, 1.0]

        var totalFurnitureVolume = 0.0

        furnitureVolumes.enumerated().forEach { index, volume in 
            print("item\(index + 1): \(volume) m³")
            if volume > maximumItemVolume {
                print("Oversized item detected ")
            }
            totalFurnitureVolume = totalFurnitureVolume + volume
        

        let usableVolume = volume - totalFurnitureVolume
        print("usable volume: \(usableVolume)m³")

        }
    }
    }

