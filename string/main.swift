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
//    let strArr = Array(string)
//    var newStr  = String()
//    for (index, item) in strArr.enumerated() {
//        if (index + 1) <= strArr.count - 1 {
//            if let valueOne = Int(String(item)),
//               let valueTwo = Int(String(strArr[index + 1])),
//               valueOne % 2 != 0 &&
//               valueTwo % 2 != 0 {
//                newStr.append("\(item)-")
//                continue
//            }
//        }
//        newStr.append(item)
//    }
//    return newStr
//}
//
//print(insertDash(string: "454793"))


//8. Найти первый индекс элемента в строке
//
//"Hello", "l" ->  2
//"abcba", "a" -> 0
//"okko", "q" -> -1
//
//func secondSymbolIndex(word: String, symbol: Character) -> Int {
//    if let endID = word.firstIndex(of: symbol) {
//        return word.distance(from: word.startIndex, to:  endID)
//    }
//    return -1
//}
//
//print(secondSymbolIndex(word: "okko", symbol: "q"))


//9. Найти второй индекс элемента в строке
//
//"Hello", "l" ->  3
//"abcba", "a" -> 4
//"okko", "q" -> -1

//func secondSymbolIndex(word: String, symbol: Character) -> Int {
//    var index = word.startIndex
//    var cointer = Int()
//    while index < word.index(before: word.endIndex) {
//        if word[index] == symbol {
//            cointer += 1
//            if cointer == 2 {
//                break
//            }
//        }
//        index = word.index(after: index)
//    }
//    if cointer > 0 {
//        return word.distance(from: word.startIndex, to:  index)
//    } else {
//        return -1
//    }
//}
//
//print(secondSymbolIndex(word: "okko", symbol: "q"))


//"1 2 3 4 5" -> "5 1"
//"1 9 3 4 -5" -> "9 -5"
//
//func highAndLow(string: String) -> String {
//
//
//    return "\(String(describing: string.components(separatedBy: .whitespaces).compactMap{Int($0)}.max() ?? 0)) \(String(describing: string.components(separatedBy: .whitespaces).compactMap{Int($0)}.min() ?? 0))"
//}
//
//print(highAndLow(string: "1 9 3 4 -5"))


//11. Написать функцию которая удаляет фрагмент в url-строке, тоесть код после #
//
//"www.apple.com#about" --> "www.apple.com"
//"www.apple.com?page=1" -->"www.apple.com?page=1"
//
//func removeUrlAnchor(url: String) -> String {
//    guard let index = url.firstIndex(of: "#") else { return url}
//    let distance = url.distance(from: url.startIndex, to: index)
//    return String(url.prefix(distance))
//}
// print(removeUrlAnchor(url: "www.apple.com#about"))


//12. Найти заглавные буквы в строке и вернуть как массив индексов
//
//"AppLE" -> [0,3,4]
//
//func findCapitals(_ string: String) -> [Int] {
//    var resultArr: [Int] = []
//    for (index, item) in string.enumerated() {
//        if String(item) == item.uppercased() {
//            resultArr.append(index)
//        }
//    }
//    return resultArr
//}
//
//print(findCapitals("AppLE"))

//13. Реверснуть слова
//"This is an example!" -> "sihT si na !elpmaxe"
//"double  spaces"      -> "elbuod  secaps"

//func reverseWords(string: String) -> String {
//    String(Array(string.components(separatedBy: " ")).map{ $0.reversed()}.joined(separator: " "))
//}
//
//print(reverseWords(string: "double  spaces"))



//14. Проверить что подстрока находится в конце строке
//
//"abc", "bc" ->  true
//"abc", "d" ->  false

//func stringEnds(_ string: String, end: String) -> Bool {
//    string.suffix(end.count).elementsEqual(end)
//}
//
//print(stringEnds("abc", end: "d"))


//15. Вытащить середину строки
//
//"test" -> "es"
//"testing" -> "t"
//"middle" -> "dd"
//"A" -> "A"

//func getMiddle(string: String) -> String {
////    let res = String(Array(string)[(Array(string).count - 1)/2]) +  String(Array(string)[((Array(string).count - 1)/2) + 1])
////    print(res)
//    return string.count % 2 == 0 ? String(Array(string)[(Array(string).count - 1)/2]) +  String(Array(string)[((Array(string).count - 1)/2) + 1]) : String(Array(string)[Array(string).count/2])
//}
//
//print(getMiddle(string: "middle"))


//16. Сконвертировать массив строк в массив чисел
//
//["1", "2", "3"] -> [1, 2, 3]

//func toNumberArray(array: [String]) -> [Int] {
//    array.compactMap { Int($0) }
//}
//
//print(toNumberArray(array: ["1", "2", "3"]))


//17. Поменять a на b и b на a
//
//"acb" -> "bca"
//"aabacbaa" -> "bbabcabb"


//func switchAtoB(_ string: String) -> String {
////    var newString = String()
////    string.forEach { item in
////        item != "a" ? newString.append("a") : newString.append("b")
////    }
////    return newString
//    String(Array(string).map { $0 != "a" ? "a" : "b" })
//}
//
//print(switchAtoB("aabacbaa"))


//18. Удалить rotten из слова
//
//["apple","rottenBanana","apple"] -> ["apple","banana","apple"]

//func removeRotten(array: [String]) -> [String] {
//    array.map { $0.replacingOccurrences(of: "rotten", with: "")}.map{ $0.lowercased()}
//}
//
//print(removeRotten(array: ["apple","rottenBanana","apple"]))
////запомнить метод!!! replacingOccurrences


//19. Отсортировать по последнему символу строки
//
//"man i need a taxi up to ubud" -> ["a", "need", "ubud", "i", "taxi", "man", "to", "up"]
//"what time are we climbing up the volcano" -> ["time", "are", "we", "the", "climbing", "volcano", "up", "what"]


//func sortByLastCharacter(string: String) -> [String] {
//    string.components(separatedBy: " ").sorted { $0.last ?? Character("") < $1.last ?? Character("") }
//}
//
//print(sortByLastCharacter(string: "man i need a taxi up to ubud"))


//20. Повторить число столько раз сколько оно по значению
//
//"312" -> "333122"
//"102269" -> "12222666666999999999"
//
//func digitsExplode(string: String) -> String {
//    String(Array(string).compactMap{String(repeating: $0, count: Int(String($0))!)}.joined())
//}
//
//print(digitsExplode(string: "102269"))

//21. Собрать первые загланые буквы в строку
//
//"This Is A Test" -> "TIAT"

//func makeStringofFirstCharacters(phrase: String) -> String {
//    String(Array(phrase).filter {$0.isUppercase})
//}
//
//print(makeStringofFirstCharacters(phrase: "This Is A Test"))


//22. Вернуть самое длинное слово из строки
//
//"a b c d e fgh" -> "fgh"
//"one two three" -> "three"
//"red blue grey" -> "grey"

//func logestWord(_ string: String) -> String {
//    String((Array(string.components(separatedBy: .whitespaces)).sorted {$0.count > $1.count}).first ?? "")
//}
//
//print(logestWord("one two three"))


//23 На вход даются две строки и нужно соединить в одну по формуле:
//
//shorter+reverse(longer)+shorter.
//
//"first", "abcde" -> "abcdetsrifabcde"
//"hello", "bau" -> "bauollehbau"
//"abcde", "fghi" -> "fghiedcbafghi"

//func concatenateByFormula(lhs: String, rhs: String) -> String {
//    rhs + String(lhs.reversed()) + rhs
//}
//
//print(concatenateByFormula(lhs: "first", rhs: "abcde"))


//24 Каждое вхождение слова coverage поменять на covfefe и
// добавить в конец каждой строки covfefe
//
//"coverage" -> "covfefe"
//"coverage coverage" -> "covfefe covfefe"
//"nothing" -> "nothing covfefe"
//"double space " -> "double space  covfefe"
//"covfefe" -> "covfefe covfefe");
//"erag" -> "erag covfefe"

//func refactCovfefe(_ string: String) -> String {
//    var arrStr = Array(string.components(separatedBy: .whitespaces))
//    if arrStr.last != "coverage" {
//        arrStr.append("coverage")
//    }
//    return String(arrStr.map{$0.replacingOccurrences(of: "coverage", with: "covfefe") }.joined(separator: " "))
//}
//
//print(refactCovfefe("double space "))
////можно сделать одну длинную не читаемую строку - тернарным оператором - но блиннннн!!!!

//25. Удалять повторяющиеся слова которые идут последовательно
//-------------------------Подумать___________________________
//
//"alpha beta beta gamma gamma gamma delta alpha beta beta gamma gamma gamma delta"
//-> "alpha beta gamma delta alpha beta gamma delta"

//func removDuplicates(string: String) -> String {
//    Array(string.components(separatedBy: .whitespaces)).removeAll { item in
//        <#code#>
//    }
//    return ""
//}
//
//print(removDuplicates(string: "alpha beta beta gamma gamma gamma delta alpha beta beta gamma gamma gamma delta"))


//26. Перевенуть строку без использования -  reversed
//
//"abcdef" -> "fedcba"

//func reverseString(_ string: String) -> String {
//    var index = string.index(before: string.endIndex)
//    var newString = String()
//    while index >= string.startIndex {
//        newString.append(string[index])
//        if index != string.startIndex {
//            index = string.index(before: index)
//        } else {
//            break
//        }
//    }
//    return newString
//}
//
//print(reverseString("abcdef"))


//27. Сконвертировать имя в инициалы
//
//"John Doe" -> "J. D."
//"Artur Lector" -> "A. L."

//func makeInitials(_ name: String) -> String {
//   String(Array(name.components(separatedBy: .whitespaces)).map {$0.prefix(1) + "."}.joined(separator: " "))
//}
//
//print(makeInitials("John Doe"))

