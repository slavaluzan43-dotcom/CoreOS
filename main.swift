import Foundation

print("CoreOS v0.0.2")

print("Please, enter your Name:")

let userName = String(readLine()!)

print("User: \(userName)")

print("Login completed successfully")

func mainMenu() {
    print("1. Applications")
    print("2. Games")
    print("3. Settings")
    print("4. Information")
    print("5. Shutdown")
}

mainMenu()

print("Choose an action:")

var menuArray = [
    "Applications", 
    "Games",
    "Settings", 
    "Information",
    "Shutdown"
]

var inApp = [
    "Calculator",
    "Notes",
    "Password Generator",
    "Back"
]

var inGames = [
    "Guess The Number",
    "Dice",
    "Rock Paper Scissors",
    "Back"
]

var inSettings = [
    "Change Username", 
    "Change Theme",
    "Reset Data",
    "Back"
]

func numberHasChosen() -> Int {
    if var choice = Int(readLine()!) {
    return choice
    }

    return 0
}

let result = numberHasChosen()

func showApp() -> Int {
    print("Applications")
    print("1. Calculator")
    print("2. Notes")
    print("3. Password Generator")
    print("4. Back")
    
    if let choice = Int(readLine()!) {
        while choice == 4 {
            return 0
        }
    }
}

func showGames() -> Int {
    print("Games")
    print("1. Guess The Number")
    print("2. Dice")
    print("3. Rock Paper Scissors")
    print("4. Back")

    if let choice = Int(readLine()!) {
        while choice == 4 {
            return 0
        }
    }
}

func showSettings() -> Int {
    print("1. Change Username")
    print("2. Change Theme")
    print("3. Reset Data")
    print("4. Back")

    if let choice = Int(readLine()!) {
        while choice == 4 {
            return 0
        }
    }

    return 0
}

inGames.removeLast()
inApp.removeLast()

func showInfo() {
    let developerName = String(readLine()!) 

    print("CoreOS")
    print("Version: 0.0.2")
    print("Developer: \(developerName)")
    print("Number Of Games: \(inGames.count)")
    print("Number Of Applications: \(inApp.count)")
}

func activateShutdownButton() {
    print("System Shutdown...")
}

while true {
    mainMenu()

    let result = numberHasChosen()
    
    switch result {
    case 1:
    showApp()
    case 2:
    showGames()
    case 3:
    showSettings()
    case 4: 
    showInfo()
    case 5:
    activateShutdownButton()
    break

    default:
    print("Unknown command!")
    }

}