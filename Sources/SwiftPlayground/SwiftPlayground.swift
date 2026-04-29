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
    6. Exit
    """)
}

func PurchaseKumura(kumuraStock: Double,) -> (kumuraChange: Double, bagsChange: Int,) {

    var funcRunning = true
    while funcRunning == true {
        print("""
        There is currently \(kumuraStock)Kgs of kumura in stock.
        how many Kumura(kg) would you like to purchase?
        (kumura costs $30/kg)
        """)

        if let input = readLine(), var sale = Double(input), sale <= kumuraStock, sale >= 0.1 {

            // Need to convert to int 
            // sale.round()
            let minBags:Int = sale/5

            print("""
            You have \(sale)Kgs of kumura. 
            How many bags would you like to purchase? 
            (You need at least \(minBags) bags)
            (bags cost 20cents/each)
            """)
            
            if let input2 = readLine(), let bagsSale = Int(input2), bagsSale >= minBags {
                
                print("You have purchased \(bagsSale) Bags")
                
                return (kumuraChange: sale, bagsChange: bagsSale)
            }
        }
        else{

        }
    }
}

func addStock(kumuraStock: Double, storageMax: Double){
    print("""
    There is currently \(kumuraStock)Kgs of kumura in stock.
    E
    """)
    
}

@main
struct SwiftPlayground {
    static func main() {
    
        /// Current number of kumura in stock.
        var kumuraStock = 10.00
        /// Max number of kumura that ccan be stored. (Kg)
        let storageMax = 50.00 
        /// Number of menu options avalable.
        let menuOptions = 6


        var programRunning = true
        while programRunning == true{

            Menu()
            print("Please select an option:")
            if let input = readLine(), let userChoice = Int(input), userChoice <= menuOptions, userChoice >= 1{}
            else {
                print("Invalid option please try again.")
            }
        
        
        let purchasefunc = PurchaseKumura(kumuraStock: kumuraStock)

        kumuraStock -= purchasefunc.kumuraChange
        }
    }
}
