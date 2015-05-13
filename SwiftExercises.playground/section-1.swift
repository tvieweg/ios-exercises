import UIKit

/*

Strings

*/

func favoriteCheeseStringWithCheese(cheese: String) -> String {
    // WORK HERE
    return cheese
}

let fullSentence = "My favorite cheese is " + favoriteCheeseStringWithCheese("cheddar")
// Make fullSentence say "My favorite cheese is cheddar."

/*

Arrays & Dictionaries

*/

var numberArray = [1, 2, 3, 4]
// Add 5 to this array
numberArray.append(5)

var numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
// Add 5 : "five" to this dictionary
numberDictionary.updateValue("five", forKey: 5)

/*

Loops

*/

// Use a closed range loop to print 1 - 10, inclusively
for number in 1...10 {
    println(number)
}

// Use a half-closed range loop to print 1 - 10, inclusively
for number in 1..<10 {
    println(number)
}

let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]

let characters = [worf, picard]

func favoriteDrinksArrayForCharacters(characters:Array<Dictionary<String, String>>) -> Array<String> {
    // return an array of favorite drinks, like ["prune juice", "tea, Earl Grey, hot"]
    var favoriteCharacterDrinks = [String]();
    for character in characters {
        favoriteCharacterDrinks.append(character["favorite drink"]!)
    }
    return favoriteCharacterDrinks
}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)

favoriteDrinks

/*

Functions

*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

let strings = ["milk", "eggs", "bread", "challah"]

func arrayToSemicolonString(inputArray: Array<String>) -> String {
    var outputString = ";".join(inputArray)
    return outputString
}

arrayToSemicolonString(strings)

let expectedOutput = "milk;eggs;bread;challah"

/*

Closures

*/

let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]

// Use a closure to sort this array alphabetically
// var sortedCerealArray = sorted(cerealArray, {cereal1, cereal2 in cereal1 < cereal2})
var sortedCerealArray = sorted(cerealArray, <)
