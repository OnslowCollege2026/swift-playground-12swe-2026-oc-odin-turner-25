// The Swift Programming Language
// https://docs.swift.org/swift-book

/// Give user a list of options to choose from.
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


/// Asks how many kumura the user is purchasing and also how bags they want to purchase.
/// 
/// - Parameters:
///   - kumuraStock: Number of kumura in stock 
/// - Returns: 
///    - kumuraChange: Number of kumura sold
///    - bagsChange: Number of bags sold
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


/// Allows user to add kumura to the stock. 
/// 
/// - Parameters:
///   - kumuraStock: Number of kumura in stock 
///   - storageMax: The highest number the kumuraStock can be
/// - Returns: Number of kumura added 
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
    else {
        print("Invalid amount, please try again")
    }
    }
}


/// Prints the current number of kumura in stock.
/// 
/// - Parameter kumuraStock: Number of kumura in stock 
func viewCurrentStock(kumuraStock: Double) {
    print("""
    ==== Current Stock ====
    kumura: \(kumuraStock)Kgs 


    """)
    
}

/// Calculates the total number of kumura and bags sold.
/// 
/// - Parameters:
///   - KumuraSales: Number of kumura sold 
///   - bagSales: Number of bags sold 
func salesRecord(KumuraSales: [Double], bagSales: [Int]) {
    var totalKumuraSales = 0.00
    KumuraSales.forEach({ kumura in  
    totalKumuraSales += kumura })

    var totalBagSales = 0
    bagSales.forEach({ bags in  
    totalBagSales += bags })

    print("""
    ==== Sales Record ====
    kumura: \(totalKumuraSales)Kgs
    Bags: \(totalBagSales)


    """)
    
}
/// Calculates the adverage price and weight of sales made per bag.
/// 
/// - Parameters:
///   - KumuraSales: Number of kumura sold 
///   - bagSales: Number of bags sold 
///   - price: Set price of kumura 
func infoSummary(KumuraSales: [Double], bagSales: [Int], price: Double) {

var kumura = 0.00
var bags = 0
var adverageW = 0.00
var profit = 0.00
var adverageP = 0.00

KumuraSales.forEach({ Double in 
kumura += Double 
profit += Double * price})

bagSales.forEach({ Int in 
bags += Int })

adverageW = kumura / Double(bags)

adverageP = profit / Double(bags)
print("""
==== Info Summary ====
Adverage weight per bag = \(adverageW)kg
Adverage profit per bag = $\(adverageP)
""")

}

@main
struct SwiftPlayground {
    static func main() {
    
        /// Current number of kumura in stock.
        var stock = 10.00
        /// Max number of kumura that ccan be stored. (Kg)
        let storageMax = 50.00 
        /// Number of menu options avalable.
        let menuOptions = 6
        /// Set price of Kumura 
        let kumuraPrice = 3.00
        /// Array of the number of bags sold 
        var bagsSale: [Int] = []
        /// Array of the number of kumura sold
        var kumuraSale: [Double] = []

        


        var programRunning = true
        while programRunning == true{


            
            Menu()
            print("Please select an option:")
            if let input = readLine(), let userChoice = Int(input), userChoice <= menuOptions, userChoice >= 1{
                

                // Runs a function depending on user choice from menu func
                if userChoice == 1 {
                    let purchaseFunc = PurchaseKumura(kumuraStock: stock)
                    bagsSale.append(purchaseFunc.bagsChange) 
                    kumuraSale.append(purchaseFunc.kumuraChange)
                    stock -= purchaseFunc.kumuraChange

                }
                
                else if userChoice == 2{
                    let addStockFunc = addStock(kumuraStock: stock, storageMax: storageMax)
                    stock += addStockFunc
                }

                else if userChoice == 3 {
                    viewCurrentStock(kumuraStock: stock)
                }

                else if userChoice == 4 {
                    salesRecord(KumuraSales: kumuraSale, bagSales: bagsSale)
                }
                else if userChoice == 5 {
                    infoSummary(KumuraSales: kumuraSale, bagSales: bagsSale, price: kumuraPrice) 
                }
                else {
                    print("""
                    Thank you for using the kumura stall 
                    ------------------------
                    """)
                    programRunning = false
                }

            }
            else {
                print("Invalid option please try again.")
            }
        
        

        
        }
    }
}
