// The Swift Programming Language
// https://docs.swift.org/swift-book

func roomVolume() -> Double {
    return 3 * 2 * 1 
}

func printArea(width: Double, length: Double) {
    print("\(width * length)m²")
}

func area(width: Double, length: Double) -> Double {
    return width * length
}

func volume(width: Double, length: Double, height: Double) -> Double {
    return width * length * height 
}



@main
struct SwiftPlayground {
    static func main() {

    print("\(roomVolume())m³")
    printArea(width: 3.0, length: 2.5)
    let area = area(width: 2.7, length: 4.2)
    print("\(area)m²")
    let volume = volume(width: 3.5, length: 2.5, height: 1.46)
    print("\(volume)m³")
    
    }
}   
