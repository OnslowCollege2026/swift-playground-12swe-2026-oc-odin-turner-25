// The Swift Programming Language
// https://docs.swift.org/swift-book

func printBoard(board: [[String]]) {
    board.forEach {line in 
        print("\(line[0]) | \(line[1]) | \(line[2])")
        print("--+---+--")
        
        
    }
    print("")
    
}

func askPosition(board: [[String]]) -> [Int] {
    while true {
        print("please enter the row number 1-3: ")
        let userInput = readLine()! 
        let rowNumber = Int(userInput)! - 1

        print("please enter the column number 1-3: ")
        let userInput2 = readLine()!  
        let columnNumber = Int(userInput2)! - 1

        if board[rowNumber][columnNumber] == "." {
            return [rowNumber, columnNumber]
        }
    }
}

@main
struct SwiftPlayground {
    static func main() {

        var player = "x"

        var board = [
            [".", ".", "."], // row 0
            [".", ".", "."], // row 1 
            [".", ".", "."]  // row 2
        ]
        printBoard(board: board)

        while true {
            // ask user for position 
            let position = askPosition(board: board)
            board[position[0]][position[1]] = "player"

            if player == "x" {
                player = "o"
            }
            else {
                player = "x"
            }
        }
//         // first move 
//         board[1][1] = "o"
//         printBoard(board: board)

//         // second move
//         board[0][0] = "x"
//         printBoard(board: board)

//         // third move
//         board[0][2] = "o"
//         printBoard(board: board)

//         // fouth move
//         board[2][0] = "x"
//         printBoard(board: board)

//         //fith move
//         board[1][0] = "o"
//         printBoard(board: board)

//         // sixth move 
//         board[1][2] = "x"
//         printBoard(board: board)

//         // odin move
//         board[2][1] = "o"
//         printBoard(board: board)

//         // eight move
//         board[2][2] = "x"
//         printBoard(board: board)
        
//         board[0][1] = "o"
//         printBoard(board: board)
    }
}
