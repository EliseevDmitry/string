//
//  main.swift
//  string
//
//  Created by Dmitriy Eliseev on 31.10.2024.
//

import Foundation

//------------------------------------------------------------1-----------------------------------------------------------------

//1. Подсчитать количество гласных (a, e, i, o, u) в строке
//
//"abracadabra" -> 5
//"pear tree" -> 4
//
//func countVowels(_ str: String) -> Int {
//}

//------------------------------------------------------------1-FOR-------------------------------------------------------------

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

//------------------------------------------------------------1-WHILE-------------------------------------------------------------

//func countVowels(_ str: String) -> Int {
//    let arrayChar: Set<Character> = ["a", "e", "i", "o", "u"] //O1 - сложность
//    var arrString: [Character] = Array(str)
//    var index = Int()
//    var counter = Int()
//    while index <= arrString.count - 1 {
//        if arrayChar.contains(arrString[index]) {
//            counter += 1
//        }
//        index += 1
//    }
//    return counter
//}
//
//print(countVowels("pear tree"))

//------------------------------------------------------------1-HOF-------------------------------------------------------------

//------------------------------------------------------------2-----------------------------------------------------------------

//2. Функция принимает число и символ и возвращает строку
//
//6, "I"     -> "IIIIII"
//5, "Hello" -> "HelloHelloHelloHelloHello"
//
//func repeatChar(_ count: Int, word: String) -> String {
//}

//------------------------------------------------------------2-FOR-------------------------------------------------------------

//func repeatChar(_ count: Int, word: String) -> String {
//    var strResult = String()
//    for _ in 1...count {
//        strResult.append(word)
//    }
//    return strResult
//}
//
//print(repeatChar(5, word: "Hello"))

//------------------------------------------------------------2-WHILE-------------------------------------------------------------

//func repeatChar(_ count: Int, word: String) -> String {
//    var strResult = String()
//    var index = Int()
//    while index < count {
//        strResult.append(word)
//        index += 1
//    }
//    return strResult
//}
//
//print(repeatChar(5, word: "Hello"))

//------------------------------------------------------------2-HOF---------------------------------------------------------------

//func repeatChar(_ count: Int, word: String) -> String {
//    String.init(repeating: word, count: count)
//}
//
//print(repeatChar(5, word: "Hello"))

//------------------------------------------------------------3-----------------------------------------------------------------

//3. Замена всех символов строки на символ (contamination)
//
//("abc","z") → "zzz"
//("","z") → ""
//("_3ebzgh4","&") → "&&&&&&&&"
//

//------------------------------------------------------------3-FOR-------------------------------------------------------------

//func contamination(string: String, char: String) -> String {
//    var newString = String()
//    for _ in 1...string.count {
//        newString.append(char)
//    }
//    return newString
//}
//
//print(contamination(string: "abc", char: "*"))

//------------------------------------------------------------3-WHILE-------------------------------------------------------------

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

//------------------------------------------------------------3-HOF---------------------------------------------------------------

//func contamination(string: String, char: String) -> String {
//    return Array(string).compactMap {_ in char}.joined()
//}
//
//print(contamination(string: "abc", char: "*"))

//------------------------------------------------------------4-------------------------------------------------------------------

//4. Удалить пустые символы из строкик

//"8 j 8   mBliB8g  imjB8B8  jl  B" -> "8j8mBliB8gimjB8B8jlB"
//"8aaaaa dddd r     " -> "8aaaaaddddr"

//------------------------------------------------------------4-FOR---------------------------------------------------------------

//func removeSpaces(string: String) -> String {
//    var newString = String()
//    for item in string {
//        if item == " " {
//            continue
//        }
//        newString.append(item)
//    }
//    return newString
//}
//
//print(removeSpaces(string: "8 j 8   mBliB8g  imjB8B8  jl  B"))

//------------------------------------------------------------4-WHILE-------------------------------------------------------------

//func removeSpaces(string: String) -> String {
//    var index = string.startIndex
//    var newString = String()
//    while index <= string.index(before: string.endIndex) {
//        if string[index] != " " {
//            newString.append(string[index])
//        }
//        index = string.index(after: index)
//    }
//    return newString
//}
//
//print(removeSpaces(string: "8 j 8   mBliB8g  imjB8B8  jl  B"))

//------------------------------------------------------------4-HOF---------------------------------------------------------------

//func removeSpaces(string: String) -> String {
//    string.components(separatedBy: .whitespaces).joined()
//}
//
//print(removeSpaces(string: "8 j 8   mBliB8g  imjB8B8  jl  B"))

//------------------------------------------------------------5-------------------------------------------------------------------

//5. Вывести количество символов самого маленького слова в предложении
//
//"Let's travel abroad shall we" → 2

//------------------------------------------------------------5-FOR---------------------------------------------------------------

//func countMinWord(_ string: String) -> Int {
//    var strArray = Array(string.components(separatedBy: .whitespaces))
//    guard var counter = strArray.first?.count else { return 0 }
//    for item in strArray {
//        if counter > item.count {
//            counter = item.count
//        }
//    }
//    return counter
//}
//
//print(countMinWord("Let's travel abroad shall we"))

//------------------------------------------------------------5-WHILE-------------------------------------------------------------

//func countMinWord(_ string: String) -> Int {
//    var strArray = Array(string.components(separatedBy: .whitespaces))
//    guard var counter = strArray.first?.count else { return 0 }
//    var index = Int()
//    while index < strArray.count {
//        if counter > strArray[index].count {
//            counter = strArray[index].count
//        }
//        index += 1
//    }
//    return counter
//}
//
//print(countMinWord("Let's travel abroad shall we"))

//------------------------------------------------------------5-HOF---------------------------------------------------------------

//func countMinWord(_ string: String) -> Int {
//    var arrString = Array(string.components(separatedBy: " "))
//    return arrString.sorted {$0.count < $1.count}[0].count
//}
//
//print(countMinWord("Let's travel abroad shall we"))

//------------------------------------------------------------6-------------------------------------------------------------------

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
//    var index = Int()
//    var str = String()
//    var arrStr: [Character] = Array(string)
//    while index < arrStr.count - 1 {
//        let curent = Int(String(arrStr[index])) ?? 0
//        let next = Int(String(arrStr[index + 1])) ?? 0
//        if curent % 2 != 0 && next % 2 != 0 {
//            str.append("\(curent)-")
//        } else {
//            str.append("\(curent)")
//        }
//        index += 1
//    }
//    return (str + String(arrStr[arrStr.count-1]))
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
//    let arrSt = Array(word)
//    var index = Int()
//    var conter = Int()
//    while index < arrSt.count - 1 {
//        if conter == 1 && arrSt[index] == symbol {
//            break
//        }
//        if arrSt[index] == symbol {
//            conter += 1
//        }
//            index += 1
//    }
//    
//    return conter == 0 ? -1 : index
//}
//
//print(secondSymbolIndex(word: "Hello", symbol: "l"))


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
//    return (zip(Array(string.components(separatedBy: .whitespaces)), Array(string.components(separatedBy: .whitespaces)).dropFirst()).compactMap {$0 != $1 ? $0 : nil} + [Array(string.components(separatedBy: .whitespaces)).last!]).joined(separator: " ")
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


//28. Реверснуть слова без использования - reversed
//"The greatest victory is that which requires no battle"
//-> "battle no requires which that is victory greatest The"

//func reverseWords(_ string: String) -> String {
//    String(Array(string.components(separatedBy: .whitespaces)).sorted(by: {$0.startIndex < $1.endIndex} ).joined(separator: " "))
//}
//
//print(reverseWords("The greatest victory is that which requires no battle"))


//29. Написать функцию суммирования строк
//
//"13",  "37" --> "50"

// - ВОЗМОЖНО - МОЖНО БЕЗ ОПЦИОНАЛА?
//func sumElements(lhs: String, rhs: String) -> String {
//    "\((Int(lhs) ?? 0) + (Int(rhs) ?? 0))"
//}
//
//print(sumElements(lhs: "13", rhs: "37"))

//30. Вытащить число из строки
//
//"123" -> 123
//"a1b2c3" -> 123
//"aa1bb2cc3dd" -> 123

//func filter(string: String) -> Int {
//    
//    return Int(Array(string).compactMap { Int(String($0)) }.map { String($0) }.joined()) ?? 0
//}
//
//print(filter(string: "123"))


//31. Проверить что все символы уникальны
//
//"abcdef" -> true
//"aba" -> false

//func uniqChars(_ str: String) -> Bool {
//    var charSet: Set<Character> = Set()
//    for item in str {
//        if charSet.contains(item) {
//            return false
//        }
//        charSet.insert(item)
//    }
//    return true
//}
//
//print(uniqChars("aba"))


//32. Разделить строку на N различных случаев одинаковой длины
//
//"Strengthened", 6 -> ["St", "re", "ng", "th", "en", "ed"]
//"Unscrupulous", 2 -> ["Unscru", "pulous"]
//"Flavorless", 1 -> ["Flavorless"]

//func splitNCases(_ str: String, _ cases: Int) -> [String] {
//    var newString = String()
//    var strArr = Array(str)
//    var counter = (strArr.count / cases)
//    for (index, item) in strArr.enumerated() {
//        if index == counter {
//            newString.append(",")
//            if counter <= counter + (strArr.count / cases) {
//                counter += (strArr.count / cases)
//            }
//        }
//        newString.append(item)
//    }
//    return newString.components(separatedBy: ",")
//}
//
//print(splitNCases("Flavorless", 1))
////не придумал как это сделать короче


//33. Проверить что почтовый индекс является валидным
//
//Пачтовый индекс валидный:
//- Если состоит только из цифр
//- Цифр должно быть 6
//- Не может начинаться с цифр 0, 5, 7, 8 и 9
//
//198328 -> true
//310003 -> true
//056879 -> false
//12A483 -> false
//1@63 -> false

//func checkPostalCode(_ code: String) -> Bool {
//    var numSet: Set<Character> = ["0", "5", "7", "8", "9"]
//    guard let postCode = Int(code) else { return false}
//    guard let firstElement = code.first else { return false }
//    if numSet.contains(firstElement) || code.count != 6 {
//        return false
//    }
//    return true
//}
//
//print(checkPostalCode("1@63"))


//34. Проверить что пароль является валидным
//
//Пароль валидный если
//- минимум 8 символов но не больше 128
//- Есть минимум один символ в верхнем регистре и нижнем регистре
//- Есть как минимум один спец символ - ~ ! ? @ # $ % ^ & * _ - + ( ) [ ] { } > < / \ | " ' . , : ;
//- Есть как минимум одна цифра 0-9
//- Только латинские или кириллические символы
//
//Abracadabra1* -> true
//Abracadabra1 -> false
//1*AqBc -> false

//func checkPassword(_ password: String) -> Bool {
//    let symbolSet: Set<Character> = ["-", "~", "!", "?", "@", "#", "$", "%", "^", "&", "*", "_", "-", "+", "(", ")", "[", "]", "{", "}", ">", "<", "/", "\\", "|", "\"", "'", ".", ",", ":", ";"] // - запомнить \\ и \"
//    let numberSet: Set<Character> = Set((1...9).compactMap{Character("\($0)")})
//    var newString = String()
//    var newString2 = String()
//    if password.count < 8 || password.count > 128 {
//        return false
//    }
//    var counter = Int()
//    
//
//    password.forEach { item in
//        if item.isLowercase {
//            counter += 1
//        }
//    }
//    if counter <= 0 { return false }
//    counter = 0
//    
//    password.forEach { item in
//        if item.isUppercase {
//            counter += 1
//        }
//    }
//    if counter <= 0 { return false }
//    counter = 0
//
//    password.forEach { item in
//        if symbolSet.contains(item) {
//            counter += 1
//        } else {
//            newString.append(item)
//        }
//    }
//    if counter <= 0 { return false }
//    counter = 0
//    
//    newString.forEach { item in
//        if numberSet.contains(item) {
//            counter += 1
//        } else {
//            newString2.append(item)
//        }
//    }
//    if counter <= 0 { return false }
//    counter = 0
//    newString2.forEach { item in
//        if item.isLetter {
//            counter += 1
//        }
//    }
//    if counter <= 0 { return false }
//    return true
//}
//
//print(checkPassword("Abracadabra1"))

//34. Проверить что пароль является валидным
//
//Пароль валидный если
//- минимум 8 символов но не больше 128
//- Есть минимум один символ в верхнем регистре и нижнем регистре
//- Есть как минимум один спец символ - ~ ! ? @ # $ % ^ & * _ - + ( ) [ ] { } > < / \ | " ' . , : ;
//- Есть как минимум одна цифра 0-9
//- Только латинские или кириллические символы
//
//Abracadabra1* -> true
//Abracadabra1 -> false
//1*AqBc -> false

//func checkPassword(_ password: String) -> Bool {
//    let symbolSet: Set<Character> = ["-", "~", "!", "?", "@", "#", "$", "%", "^", "&", "*", "_", "-", "+", "(", ")", "[", "]", "{", "}", ">", "<", "/", "\\", "|", "\"", "'", ".", ",", ":", ";"] // - запомнить \\ и \"
//    var conditions = (false, false, false, false, false)
//    var newString = String()
//    if password.count < 8 || password.count > 128 {
//        return false
//    }
//    password.forEach { item in
//        if item.isLowercase {
//            conditions.0 = true
//        }
//        if item.isUppercase {
//            conditions.1 = true
//        }
//        if symbolSet.contains(item) {
//            conditions.2 = true
//        } else {
//            newString.append(item)
//        }
//    }
//    if !Array(newString).elementsEqual(Array(newString).compactMap{($0).isNumber ? nil : $0 }) {
//        conditions.3 = true
//    }
//    if Array(newString).compactMap({($0).isNumber ? nil : $0 }).elementsEqual(Array(newString).compactMap{($0).isNumber ? nil : $0 }.compactMap{($0).isLetter ? $0 : nil }) {
//        conditions.4 = true
//    }
//    return conditions.0 && conditions.1 && conditions.2 && conditions.3 && conditions.4
//}
//
//print(checkPassword("1*AqBc"))


//35. На входе строка на выходе массив строк с капитализацей четных и нечетных символов
//
//"abcdef" -> ["AbCdEf", "aBcDeF"]
//
//func capitalize(_ string: String) -> [String] {
//
//   // print(Array(string).enumerated().map{ $0.offset % 2 != 0 ? String($0.element.uppercased()) : String($0.element) }.joined() )
// return [Array(string).enumerated().map{ $0.offset % 2 == 0 ? String($0.element.uppercased()) : String($0.element) }.joined()] + [Array(string).enumerated().map{ $0.offset % 2 != 0 ? String($0.element.uppercased()) : String($0.element) }.joined()]
//
//}
//
//print(capitalize("abcdef"))
