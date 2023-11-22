import UIKit



func reverseWords(input : String) -> String{
    var reversedString = ""
    var currentWord = ""
    
    
    for letter in input {
        if letter == " "{
            reversedString += String(currentWord.reversed()) + ""
            currentWord = ""
        }else{
            currentWord.append(letter)
        }
    }
    
    reversedString += String(currentWord.reversed())
    
    return reversedString
}


let inputString = "I LOVE INDIA"

let reversedResult = reverseWords(input: inputString)
print(reversedResult)
