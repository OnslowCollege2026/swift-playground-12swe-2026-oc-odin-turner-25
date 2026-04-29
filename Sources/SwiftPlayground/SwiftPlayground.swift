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

    while true {
        print("""
        There is currently \(kumuraStock)Kgs of kumura in stock.
        how many Kumura(kg) would you like to purchase?
        (kumura costs $30/kg)
        """)

        if let input = readLine(), let sale = Double(input), sale <= kumuraStock, sale >= 0.1 {

            // Caluclatges the samllest number of bags needed 
            let minBags = Int((sale + 4.9) / 5)
            
            
            while true{
            print("""
            You are buying \(sale)Kgs of kumura. 
            How many bags would you like to purchase? 
            (You need at least \(minBags) bag/s)
            (bags cost 20cents/each)
            """)
            
            // checking user input is valid and user bought enough bags 
            if let input2 = readLine(), let bagsSale = Int(input2), bagsSale >= minBags {
                
                print("You have purchased \(bagsSale) Bag/s")
                
                return (kumuraChange: sale, bagsChange: bagsSale)
            }
            else{
                print("Invalid purchase amount please try again.")
            }
            }
        }
        else{
            print("Invaild purchase amount please try again.")
            
        }
        }
    }


func addStock(kumuraStock: Double, storageMax: Double) -> Double{
    while true {
    print("""
    There is currently \(kumuraStock)Kgs of kumura in stock.
    Enter the amount of kumura you would like to add.
    (The storage limit is \(storageMax)Kgs)
    """)
    
    if let input = readLine(), let addedKumura = Double(input), addedKumura >= 0.1, addedKumura + kumuraStock <= storageMax {
        print("""
        You have added \(addedKumura)kgs 
        the new stock is \(addedKumura + kumuraStock)Kgs
        """)
        
        return addedKumura
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
        let menuOptions = 6


        var programRunning = true
        while programRunning == true{

            Menu()
            print("Please select an option:")
            if let input = readLine(), let userChoice = Int(input), userChoice <= menuOptions, userChoice >= 1{

                if userChoice == 1 {
                    let purchaseFunc = PurchaseKumura(kumuraStock: kumuraStock)
                }
                
                else if userChoice == 2{
                    let addStockFunc = addStock(kumuraStock: kumuraStock, storageMax: storageMax)
                }
            }
            else {
                print("Invalid option please try again.")
            }
        
        

        kumuraStock -= purchasefunc.kumuraChange
        }
    }
}
