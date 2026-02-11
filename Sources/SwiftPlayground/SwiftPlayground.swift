// The Swift Programming Language
// https://docs.swift.org/swift-book

func roomVolume() -> Double {
    return 3 * 2 * 1 
}

func printArea(width: Double, length: Double) {
    print("\(width * length)m²")
}


@main
struct SwiftPlayground {
    static func main() {  
    print("\(roomVolume())m³")
    printArea(width: 3.0, length: 2.5)


    }
}   