// The Swift Programming Language
// https://docs.swift.org/swift-book



/// Prints the main manu 
/// - Returns: user menu selction
func showMenu() -> Int {
    print ("""
    =====Egg Shop=====
        1. Add eggs
        2. Sell eggs 
        3. Show current stock 
        4. Show sales total 
        5. Exit 
    Choose an option:
    """)
    
    guard let userInput = readLine() ,  let userInput = Int(userInput) , 
    userInput > 0 , userInput < 6
    else {
        print("Please choose one of the 5 options.")
        return 6
    } 
    return userInput
}


/// asks user how many eggs are being added
/// Limits: > 1, < 1,000
/// - Parameter eggsInStock: The cuurent number of eggs in stock 
func addEggs(eggsInStock: Int) -> Int{
    print("Enter number of eggs being added to the stock:")
    guard let addedEggs = readLine(), let addedEggs = Int(addedEggs) , 
addedEggs > 0 , addedEggs + eggsInStock < 1000  
else {
    print("na")
    
    return 0 
}
print("\(addedEggs) eggs added")
return addedEggs
}


func sellEggs(eggsInStock: Int) -> Int{
    print("Enter number of eggs being sold:")
    guard let soldEggs = readLine(), let soldEggs = Int(soldEggs) , 
soldEggs > 0 , soldEggs <= eggsInStock   
else {
    print("na")
    
    return 0
}
print("\(soldEggs) eggs added")
return -soldEggs
}


func eggStock(eggsInStock: Int) {
    print("""
    -----Current Egg Stock-----
    eggs: \(eggsInStock)




    """)
}


func eggSales(eggsSold: Int) {
    print("""
    -----Current Egg Sales-----
    eggs sold: \(eggsSold)




    """)
}

/// calls a function based on users input
/// - Parameter currentMenuChoice: Users input from the main menu 
func menuChoice(currentMenuChoice: Int, eggs: Int, Sales: Int) -> (theInt: Int, theString: String) {

if currentMenuChoice == 1 {
    while true {
        let addEggsResult: Int = addEggs(eggsInStock: eggs)
        if addEggsResult == 0 {
        return (0, "nothing")
        }
        else {
            return (theInt: addEggsResult, theString: "change")
            
        }
        
    }
}
else if currentMenuChoice == 2  {
    let sellEggsResult: Int = sellEggs(eggsInStock: eggs)
        if sellEggsResult == 0 {
        return (0, "nothing")
        }
        else {
            return (theInt: sellEggsResult, theString: "change")
            
        }
}
else if currentMenuChoice == 3 {
    eggStock(eggsInStock: eggs)
    return (theInt: 0, theString: "nothing")
}
else if currentMenuChoice == 4  {
    eggSales(eggsSold: Sales)
    return (theInt: 0, theString: "nothing")
}
else if currentMenuChoice == 5 {
    print("thank you for using the egger counterer")
    
    return (theInt: 0, theString: "the end")
}
else {
    return (theInt: 0, theString: "nothing")
}
}



@main
struct SwiftPlayground {
    static func main() {
        
        
        var eggsSold = 0
        var currentEggStock = 20 

        while true {
            let menuInput = showMenu()

            let stockChange = menuChoice(currentMenuChoice: menuInput, eggs: currentEggStock, Sales: eggsSold) 
            if stockChange.theString == "change" {
                if stockChange.theInt < 0 {
                    currentEggStock += stockChange.theInt
                    eggsSold -= stockChange.theInt
                }
                else if stockChange.theInt > 0 {
                    currentEggStock += stockChange.theInt
                }
                else{
                    
                }
            }
            else if stockChange.theString == "nothing" {
                
            }
            else {
                break
            }
        }
    }
}
