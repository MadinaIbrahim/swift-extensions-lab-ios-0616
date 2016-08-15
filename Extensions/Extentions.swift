//
//  Extentions.swift
//  Extensions
//
//  Created by Madina Ibrahim on 8/13/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
import UIKit

//STRING
//Create an extension function for the String class called whisper()
//Returns a String in lowerscase to create a whispering effect
extension String {
    func whisper() -> String {
       return self.lowercaseString
    }
// Create a String extension function for the String class called shout()
// Returns a String in upperscase to create a shouting effect
    
    func shout() -> String {
        return self.uppercaseString
    }
    
//    Create a String extension computed property for the String class called pigLatin
 
//    Should be able to handle sentances
   
    var pigLatin : String {
        
   //    If it's a single letter, it should return the character
        if self.characters.count == 1 {
            return self
        }
        
        var pigLatinSecretWords = " " // storage for end result
        var splitByEmptySpace = self.lowercaseString.componentsSeparatedByString(" ")
        // container for array of characters for word

        
// Takes the first letter of a word and moves it to the end
// Adds the letters "ay" to the end of the word
    for (index, _) in splitByEmptySpace.enumerate() {
        var secretWord = splitByEmptySpace[index]
        let firstCharacter = (secretWord as NSString).substringToIndex(1) //Returns a new string containing the characters of the receiver up to, but not including, the one at a given index.
        secretWord = (secretWord as NSString).substringFromIndex(1) // Returns a new string containing the characters of the receiver from the one at a given index to the end.
        secretWord.appendContentsOf(firstCharacter)
        secretWord.appendContentsOf("ay")
        if splitByEmptySpace[index] != splitByEmptySpace.last {
            secretWord = secretWord.stringByAppendingString(" ")
        }
        secretWord = secretWord.capitalizedString
        
        pigLatinSecretWords.appendContentsOf(secretWord)
        }
        return pigLatinSecretWords
    }
    

    
//    Create an Int extension computed property for the String class called points
//    Should calculate the amount of points a given string has
//    1 point for consonants and 2 points for vowels
//    Ignores spaces and numbers, returns zero for empty strings
    
    func point() -> Int {
       var points = 0
        for letters in self.whisper().characters{
            switch letters {
            case "a","e","i","o","u":
                points += 2
            default:
                points += 1
            }
        }
        return points
    }

/*
 EMOJI
 1.Create a computed extension property on String called unicornLevel
 Calculates one unicorn for each character in the recipient String
 Use this totes adorbs unicorn emoji 🦄 directly in your code. For example:
 let unicornPhrase = "My 🦄 is awesome"
 print(unicornPhrase)
 Console output: My 🦄 is awesome
 2.You probably haven't interacted with UIView much or maybe not at all, but let's get our unicorn status to be displayed in the simulator. Don't worry too much about how it's doing it just yet. You'll get into that later on!
 
 */

    
        func unicornLevel() -> String {
            let unicorn = "🦄"
            var unicornLevel = ""
            for _ in self.characters {
                unicornLevel.appendContentsOf(unicorn)
            }
            let unicornPhrase = "My 🦄 is awesome"
            print(unicornPhrase)
            return unicornLevel
        }
}



/*
 INT
 Create an extension function for the Int class called half()
 Halves itself   */
extension Int {
    func half() -> Int {
        return self / 2
    }
//    Create an extension function for the Int class called isDivisibleBy()
//    To find out if the recipient Int is divisible by the argument
//    Takes in an Int argument
//    Returns a bool
    func isDivisibleBy(divisor: Int) -> Bool {
        return self % divisor == 0
    }
//    Create an extension computed property for the Int class called squared
//    Squares itself
    var squared : Int {
        return self * self
    }
    
//    Create an extension computed property for the Int class called halved
//    Halves itself by calling a function
    var halved : Int {
        return self.half()
    }

}






