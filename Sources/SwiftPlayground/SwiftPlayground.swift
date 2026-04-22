// The Swift Programming Language
// https://docs.swift.org/swift-book

func Menu(){
    print("""
    ------Kumura Stall------
    1. Purchase Kumura 
    2. Add Stock 
    3. View current stock 
    4. View sales records 
    5. Info summary 
    """)
}

func PurchaseKumura(){

}



@main
struct SwiftPlayground {
    static func main() {
    
        /// Current nuber of kumura in stock
        var kumuraStock = 10.00
        /// Max number of kumura that ccan be stored. (Kg)
        let storageMax = 50.00 
        let menuOptions = 5


        var programRunning = true
        while programRunning == true{

            Menu()
            print("Please select an option:")
            if let input = readLine(), let userChoice = Int(input), userChoice <= menuOptions, userChoice >= 1{}
            else {
                print("Invalid option please try again.")
            
            }


        }
    }
}
