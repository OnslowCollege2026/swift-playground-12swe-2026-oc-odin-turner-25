// The Swift Programming Language
// https://docs.swift.org/swift-book

// Give user a list of options to choose from.
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

func PurchaseKumura(kumuraStock: Double,) -> Double {

    var funcRunning = true
    while funcRunning == true {
        print("""
        There are currently \(kumuraStock)Kgs of kumura in stock
        how many Kumura(kg) would you like to purchase?
        (each bag holds 5Kg)
        (kumura costs $30/kg)
        """)

        if let input = readLine(), let sale = Double(input), sale <= kumuraStock, sale >= 0.1, sale <= 5 {

            let bagsUsed = sale/5

            print("""
            You have \(sale)Kgs of kumura split between 
            
            """)
            
            return kumuraStock
        }
        else{

        }
    }
}



@main
struct SwiftPlayground {
    static func main() {
    
        /// Current number of kumura in stock.
        var kumuraStock = 10.00
        /// Max number of kumura that ccan be stored. (Kg)
        let storageMax = 50.00 
        /// Number of menu options avalable.
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
