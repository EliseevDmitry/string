//
//  main.swift
//  string
//
//  Created by Dmitriy Eliseev on 31.10.2024.
//

import Foundation

//1. Подсчитать количество гласных (a, e, i, o, u) в строке
//
//"abracadabra" -> 5
//"pear tree" -> 4
//
//func countVowels(_ str: String) -> Int {
//}


//func countVowels(_ str: String) -> Int {
//    let arrayChar: Set = ["a", "e", "i", "o", "u"] //O1
//    var counter = Int()
//    for item in str {
//        if arrayChar.contains("\(item)") {
//            counter += 1
//        }
//    }
//    return counter
//}
//
//print(countVowels("abracadabra"))


//2. Функция принимает число и символ и возвращает строку
//
//6, "I"     -> "IIIIII"
//5, "Hello" -> "HelloHelloHelloHelloHello"
//
//func repeatChar(_ count: Int, word: String) -> String {
//}

//func repeatChar(_ count: Int, word: String) -> String {
//    String.init(repeating: word, count: count)
//}
//
//print(repeatChar(5, word: "Hello"))


//3. Замена всех символов строки на символ (contamination)
//
//("abc","z") → "zzz"
//("","z") → ""
//("_3ebzgh4","&") → "&&&&&&&&"
//

//func contamination(string: String, char: String) -> String {
//    var index = string.startIndex
//    var strNew = ""
//    while index <= string.index(before: string.endIndex) {
//        strNew.append(char)
//        index = string.index(after: index)
//    }
//    return strNew
//}
//
//print(contamination(string: "abc", char: "*"))


//4. Удалить пустые символы из строкик

//"8 j 8   mBliB8g  imjB8B8  jl  B" -> "8j8mBliB8gimjB8B8jlB"
//"8aaaaa dddd r     " -> "8aaaaaddddr"

//func removeSpaces(string: String) -> String {
//    string.components(separatedBy: .whitespaces).joined()
//}
//
//print(removeSpaces(string: "8 j 8   mBliB8g  imjB8B8  jl  B"))

//5. Вывести количество символов самого маленького слова в предложении
//
//"Let's travel abroad shall we" → 2

//func countMinWord(_ string: String) -> Int {
//    var arrString = Array(string.components(separatedBy: " "))
//    return arrString.sorted {$0.count < $1.count}[0].count
//}
//
//print(countMinWord("Let's travel abroad shall we"))


//6. Сделать маску для номера кредитной карты чтобы отображались только последние 4 цифры
//"4556364607935616" -> "************5616"
//"4556364" -> "***6364"
//"4556" -> "4556"
//"45" -> "45"

//func maskify(string: String) -> String {
//    var arrStr = Array(string)
//    for (index, item) in arrStr.enumerated() {
//        if index < arrStr.count - 4 {
//            arrStr[index] = "*"
//        }
//    }
//    return String(arrStr)
//}
//
//print(maskify(string: "4556364607935616"))


//7. Написать фукнцию которая проставит тире между нечетными числами
//
//"454793" -> "4547-9-3"
//
//func insertDash(string: String) -> String {
//    zip(Array(string), Array(string).dropFirst()).map{$0 }
//    return ""
//}




