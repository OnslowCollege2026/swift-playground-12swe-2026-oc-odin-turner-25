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
addedEggs < 0 , addedEggs + eggsInStock < 1000  
else {
    return 0
}
return addedEggs
}


func eggStock(eggsInStock: Int) {
    print("""
    -----Current Egg Stock-----
    eggs: \(eggsInStock)
    """)
}


/// calls a function based on users input
/// - Parameter currentMenuChoice: Users input from the main menu 
func menuChoice(currentMenuChoice: Int, eggs: Int) -> Int {
if currentMenuChoice == 1 {
    while true {
        let addEggsResult: Int = addEggs(eggsInStock: eggs)
        if addEggsResult == 0 {
        
        }
        else {
            return addEggsResult
        }
    }
}
else if currentMenuChoice == 2  {
    return 0
}
else if currentMenuChoice == 3 {
    eggStock(eggsInStock: eggs)
    return 0
}
else if currentMenuChoice == 4  {
    return 0
}
else if currentMenuChoice == 5 {
    return 0
}
else {
    return 0
}
}



@main
struct SwiftPlayground {
    static func main() {
        
        var programIsRunning = true
        var eggsSold = 0
        var currentEggStock = 20 

        while programIsRunning == true {
            let menuInput = showMenu()

            let stockChange = menuChoice(currentMenuChoice: menuInput, eggs: currentEggStock) 
            if stockChange < 0 {
                currentEggStock += stockChange
                eggsSold -= stockChange
            }
            else if stockChange > 0 {
                currentEggStock += stockChange
            }
            else{
                programIsRunning = false
            }
        }
    }
}
