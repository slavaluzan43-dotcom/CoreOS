import Foundation

print("CoreOS v0.0.1")

print("User: Admin")

print("1. Applications")
print("2. Games")
print("3. Settings")
print("4. Information")
print("5. Shutdown")

print("Choose an action:")

var mainMenu = [
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

func number() -> Int {
    if var choice = Int(readLine()!) {
    return choice
    }

    return 0
}

let result = number()

func showApp() -> Int {
    print("Applications")
    print("1. Calculator")
    print("2. Notes")
    print("3. Password Generator")
    print("4. Back")
    
    if let choice = Int(readLine()!) {
        return choice
    }

    return 0
}

func showGames() -> Int {
    print("Games")
    print("1. Guess The Number")
    print("2. Dice")
    print("3. Rock Paper Scissors")
    print("4. Back")

    if let choice = Int(readLine()!) {
        return choice
    }

    return 0
}

func showSettings() -> Int {
    print("1. Change Username")
    print("2. Change Theme")
    print("3. Reset Data")
    print("4. Back")

    if let choice = Int(readLine()!) {
        return choice
    }

    return 0
}

inGames.removeLast()
inApp.removeLast()

func showInfo() {
    let developerName = String(readLine()!) 

    print("CoreOS")
    print("Version: 0.0.1")
    print("Developer: \(developerName)")
    print("Number Of Games: \(inGames.count)")
    print("Number Of Applications: \(inApp.count)")
}

switch result {
    case 1:
    showApp()
    case 2:
    showGames()
    case 3:
    showSettings()
    case 4: 
    showInfo()

    default:
    print("Unknown command!")
}