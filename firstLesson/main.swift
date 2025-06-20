//
//  main.swift
//  firstLesson
//
//  Created by M3 pro on 25/05/2025.
//
/*
import Foundation

print("Hello, World!")

func main(){
    print("I'm Millioner")
}

main()

var myVar = "100 million"
var integer = 1
var float = 1.2 // 32 битный
var double = 1.2 // Отличие от Float он 64-х битный и может вместить больше дробных значений6 за счет чего более точно покажет данные с удлиненными хвостами
var string = "string"
var boolean = true
var boolean2 = false

print(myVar, integer, float, string, boolean, boolean2, separator: "\n")

let userAge = 23
let userName: String
userName = "michał"

print(userAge, userName)
                    
                        // МАТЕМАТИЧЕСКИЕ ОПЕРАТОРЫ
// остаток от деления
var residueOfDivision = userAge % 2
print("остаток от деления: ", residueOfDivision)
// на языке SWIFT обычное деление работает как деления без остатка на языке PYTHON
var divisionsWithoutRemainder = userAge/2
print("деления без остатка: ", divisionsWithoutRemainder)


                        // ЛОГИЧЕСКИЕ ОПЕРАТОРЫ ИЛИ ЛОГИЧЕСКИЕ ВЫРАЖЕНИЯ

// Логические операторы на языке SWIFT отличаются от операторов на языке PYTHON
// оператор "and" на языке SWIFT будет "&&", оператор "or" на языке SWIFT будет "||"

let age = 31
let name = "Timur"

if age == 31 && name == "Timur" {
    print("Да, это я")
} else {
    print("Нет, это не я дебил")
}

// Можно еще к переменной или константе присвоить результат операторов, при этом все можно написать на одной строке

let result = age == 31 && name == "Timur"
// результат будет булевое значение "true" и присвоится к константе result
print(result)

// еще одна вещь которого нет на языке python:
// "!" знак перед булевым знаечением возвращает противоположенное булевое значение
// где это может пригодиться? Например:

let result2 = age == 31 && !(name == "Timur")
print(result2)// здесь условие говорит: если возраст(age) равно 31 и имя(name) не равно "Timur". Вот так звучит и вот так можно использовать
// или же это значение можно сравнить вот с таким условием
let result3 = age == 31 && name != "Timur"
print(result3)
// результат одно и тоже

if age <= 30 {
    print("Ты еще молод, набирай опыта, совершенствуйся")
} else if age > 30 && age < 36 {
    print("Развивайся максимально, не останавливайся, думай только на позитиве, ты скоро станешь миллионером!")
}else {
    print("Ты живи на свое удоволствие, ты это заслужил")
}


                        // Получение информации с консоли


// Метод для получения информации с консоли readLine(),  python этот метод был input()

print("Укажите ваш возвраст: ")

let ageForYou = readLine() ?? "" // ?? "" обяснение этого внизу будет

print("Ваш возраст: ", ageForYou)


                        // Optional типы данных
/*
Это когда в конце названия типов данных стоит "?" знак. Например

var a: Int? = 1 // Это опциональный интегер можно назвать.

var b: String? = "Come On" // Это опциональная строка можно назвать.

Основное отличие опциональных от обычных -- это они могут содержать значение nil, как на языке python None. Без опциональных типов нельзя указать nil, так как обычные типы данных не принимают значение nil
Еще один немало важный момент с опционалами, это они не участвуют в математических операциях. Типо var a: Int? = 1 и var b: Int? = 2, a+b вот так нельзя, потому что в них может содержаться nil,
    а когда nil+nil сами понимаете так нельзя. Неважно то что мы указали цифры и тд,
    интерпретар это не различает то что присвоено по факту, когда у нас тип данных
    опциональное.
Еще один момент с опционалами, переприсвоение значение переменных или констант, значие обычного типа данных к опционалу присвоить можно, а вот с опционала к обычному нельзя. Посмотрим на примере:
var a: Int = 1 и var b: Int? = 3. b = a сработает и значение b = 1
А вот наоборот нельзя, var a: Int = 1 и var b: Int? = 3, a = b выдаст ошибку, так как интерпретор не определят значение опционала.
Но опционалов можно между собой сравнивать <,  >,  =

*/


                        // Распаковка опционалов
// Распаковка опционалов нужно для проведения взаимодействия с ними (еще не знаю какие взаимодействия можно с ними осуществлять). Есть 4 вида распаковки:

// Явная безопасная распаковка
let firstNumber: Int = 9
let secondNumber: Int? = 8
let thirdNumber: Int? = nil

if let secondNumber{
    print("У вас получилось распаковать опционал и сложить: ", firstNumber + secondNumber)
} else {
    print("Константа bq пустая")
}

if let thirdNumber{
    print("У вас получилось распаковать опционал и сложить: ", firstNumber + thirdNumber)
} else {
    print("Константа cq пустая")
}
// На верхнем блоке кода идет распаковка с проверкой через оператор if. И всегда явная распаковка и безопасная распаковка идет через оператор if

// Явная НЕБЕЗОПАСНАЯ распаковка:

let fNumber: Int = 9
let sNumber: Int? = 8
let tNumber: Int? = nil

print(fNumber + sNumber!) // "!" вот этот знак вконце опционала означает "явная распаковка", но это считается не безопасным, так как нет проверки на валидность значения и в каких-то случаях программа может упасть из-за этого
//print(fNumber+tNumber!)  // вот в этом случае программа в рантайме упадет, так как наша константа tNumber содержит значение nil. Вот знак ! называют программисты "палкой смерти"

// НЕЯВНАЯ и НЕБЕЗОПАСНАЯ распаковка
// Это не совсем то и распаковка на самом деле, но результат узнаешь при распаковке, поэтому я думаю его так назвали. Тут при обьвлении опционала используется НЕ вопросительный знак "?", а восклицательный знак "!". Это тоже будет считаться опционалом который может принят nil
let one: Int = 1
let two: Int! = 2
let three: Int! = nil

print(one + two) // компилятор не пишет никакой ошибки, так как мы обявили опционал через "!" знак.
//print(two + three) // Но в этом случае программа упадет так как three содержит значение nil

// Следующий метод распаковки называется "Значение поумолчанию". Как это работает:

let one1: Int = 1
let two2: Int? = 2
let three3: Int? = nil
/*
print(one1 + (two2 ?? 0)) // мы взяли под скобку опционал и ввели два вопросительных знака и 0, это выражение говорит: "Если есть какое-то значение в константе используй его, но если не будет значение, а точнее если там nil, подставь значение 0" вместо 0 можно указать любое значение.
    Все это дело взяли под скобку для того чтобы сначала испольнился код внутри скобки,
    а не +, так как без скобки по приоритету знаков выполниться +, тогда программа упадет,
    для того чтобы код выполнился так как мы ожидаем надо в скобку загнать, тогда по
    приоритету исполнится сначала то что в скобке
*/

                        // Преобразование типов

/*
 ПРЕОБРАЗОВАНИЕ В Int() ==>> происходит с помощью вызова функции Int() и передачу в нее то значение которого надо преобразовать в ИНТ.В Integer можно преобразовать только:
 
    Double ==> при преобразовании округляет в меньшую сторону. Например
                    let a = 2.4
                    let b = Int(a) вернет b = 2
    Float ==> при преобразовании округляет в меньшую сторону как с Double
 
    String ==> может преобразовать только строку содержащую целую цифру, например "34", если строка будет состоят еще и букв и тд, тогда преобразовать не может. Даже если строка содержит дробную цифру тоже не сможет преобразовать.
        ТОЛЬКО ЦЕЛЫЕ ЦИФРЫ В СТРОКАХ ДОЛЖНЫ БЫТЬ!!!
        И когда строка преобразовывается в Integer, он возвращает Optional(34)
 
 
 ПРЕОБРАЗОВАНИЕ В Double ==>>  происходит с помощью вызова функции Double() и передачу в нее то значение которого надо преобразовать в Double.В Double можно преобразовать только:
 
    Float ==> без проблем
 
    String ==> может преобразовать только содержащие целые и дробные числа, но в строке дробные числа должны быть указаны через точку(Например: 0.6), если через запятую указаны числа в строке, то будет игнорировать. Если все ок, то Возвращает Optional()
 
    Integer ==> может преобразовать с добавлением в конце дробную часть. Например:
                5 -> 5.0 и тд
 
 
 ПРЕОБРАЗОВАНИЕ В Float ==> Работает идентично как и Double
 
 
 ПРЕОБРАЗОВАНИЕ В String ==> Они могут преобразовать любые типы в строку
 
 
 ПРЕОБРАЗОВАНИЕ В Character ==> Это тип данных похожий на строки, можно сказать разнавидность строки, содержащий строку ТОЛЬКО ОДИН СИМВОЛ. Например:
 
                let char = "P"  или let char = "1"
     Оно преобразовать может только строку содержащий один символ (непонятно зачем)
 
 
 ПРЕОБРАЗОВАНИЕ В Boolean ==> Boolean можно получить только из строки содержащие ТОЛЬКО "true" или "false" и возвращает Optinal(true) или Optinal(false), в остальных случаях будет возвращаться nil.
 
 */


                        // Приведение типов

/*
 
 Сразу на заметочку приведение и преобразование типов, это не одно и тоже!!! Они очень похожи и можно запутаться. Приведение типов особо понятно будет если мы с типом Any поработаем для примера.
 Any -- Это общий тип данных который может содержать все частные типы.
    Когда у нас переменная или константа указан с типом Any, то компилятор не видит
    значение что указано после знака "=", поэтому надо аккуратно. Для компилятора
    существует только сам тип Any, через print() покажет то что есть, но никакие
    математические или какие либо операции с ним невозможно производить.
 Вот в теперь поговорим о приведении типов. Например, у нас есть переменная аb с типом Any и содержащий в себе двойку и переменная bc с типом Int  содержащий 1:
                var ab: Any = 2
                var bc: Int = 1
    для сложения этих двух значений нам нужно приведение типа Any в тип Int. Это делается с помощью оператора "as", ниже показано как используется в коде:
                var ab: Any = 2
                var bc: Int = 1
                var result5 = (ab as! Int) + bc
                print("Получилось: ", result5)
    У этого оператора "as" есть 3 типа, без знака в конце "as", с вопросительным знаком "as?" и с воклицательным знаком "as!".
 
    - "as" используется когда из частно в Any надо приводит, например:
                var x: Int = 5
                var y = x as Any мы привели в тип Any с помощью оператора "as"
 
    - "as?" используется когда значение надо приводит с Any в другие СООТВЕТСТВУЩИЕ типы. ВАЖНО помнить что этот оператор может вернуть только в соответствущий тип. Например из строки указанный даже целые цифры он не сможет получить Int, он сможет только в строку привести, так как там строка. Например:
                var str: Any = "35"
        он не сможет это в Int или Double, Float привести,только в строку, так как после
        знака присвоения там строка. Если вы захотите все таки привести или то вернет nil.
        В остальных случаях, когда вы используете правильно, он вернет Optional().
        Пример правильного использования оператора "as?":
                var x: Any = true
                var y = x as? Boolean
                вернет Optional(true)
        Во многих случаях лучше использовать этот способ, так как более безопасный
 
    - "as!" это принудительное приведение с общего Any типа в частные типы. Но если мы не знаем что содержиться в том что собираемся приводит в другой тип с помощью "as!", то программа упадет с ошибкой. Поэтому лучше избегать использования этого варианта
 
 

 // Оператор "is"

 Оператор "is" используется для проверки содержаемого Any на соответствие ожидаемых типов. Пример:
                    var x: Any = 2
                    var y = x is Int // вернет true
                    var y = x is Bool // вернет false
                    var y = x is Float // вернет false
    Чаще всего в составлении условий.
    Этот оператор похож на оператор PYTHON if isinstance
 
*/
 */

                        // Код калькулятора
/*
print("Добро пожаловать в калькулятор")

print("Выберите операцию: +, -, * или /")

var operation = readLine() ?? ""

print("Введите первое целое число: ")
let inputNumberOne = readLine() ?? ""

print("Введите второе целое число: ")
let inputNumberTwo = readLine() ?? ""

print("Идет вычисление...")

if let inputNumberOne = Int(inputNumberOne){
    if let inputNumberTwo = Int(inputNumberTwo){
        switch operation{
        case "+": print("Результат: ", String(inputNumberOne + inputNumberTwo))
        case "-": print("Результат: ", String(inputNumberOne - inputNumberTwo))
        case "*": print("Результат: ", String(inputNumberOne * inputNumberTwo))
        case "/":
            if inputNumberTwo != 0 {
                print("Результат: ", String(inputNumberOne / inputNumberTwo))
            } else {
                print("На 0 делить нельзя!")
            }
        default: print("Вы ввелу неверную операцию")
        }
    } else{
        print("Вы ввели неправильно второе число => \(inputNumberTwo)")
    }
}else{
    print("Вы ввели неправильно первое число => \(inputNumberOne)")
}

*/


                        //Рефакторинг кода калькулятора
/*
func inputNumber(description: String ) -> String {
    print(description)
    let inpuData = readLine() ?? ""
    
    return inpuData
}

func calculate(operation: String, numberOne: Int, numberTwo: Int){
    switch operation{
    case "+": print("Результат: ", String(numberOne + numberTwo))
    case "-": print("Результат: ", String(numberOne - numberTwo))
    case "*": print("Результат: ", String(numberOne * numberTwo))
    case "/":
        if numberTwo != 0 {
            print("Результат: ", String(numberOne / numberTwo))
        } else {
            print("На 0 делить нельзя!")
        }
    default: print("Вы ввелу неверную операцию")
    }
}


print("Добро пожаловать в калькулятор")

let operation = inputNumber(description: "Выберите операцию: +, -, * или /")

let numberOne = inputNumber(description: "Введите первое целое число: ")

let numberTwo = inputNumber(description: "Введите второе целое число: ")

print("Идет вычисление...")

if let numberOne = Int(numberOne){
    if let numberTwo = Int(numberTwo){
       calculate(operation: operation, numberOne: numberOne, numberTwo: numberTwo)
    } else {
        print("Вы ввели неправильно второе число => \(numberTwo)")
    }
} else {
    print("Вы ввели неправильно первое число => \(numberOne)")
}
 */

                        // Циклы
/*
 Все как и на Python и for и while.

Есть еще repeat while цикл. Он работает чуть по другому. Пример:
 
 var index = 20
 repeat{
    print(index)
    index += 1
 } while index < 10
Исходя из примера можно понять одно, в отличии от обычного цикла while тут вход в цикл начинается с выполнения тело, а потом выполняется условие
 */

                        // Улучшение калькулятор с циклами
/*
print("Добро пожаловать в калькулятор")

func inputData(description: String) -> String {
    print(description)
    let inputData = readLine() ?? ""
    
    return inputData
}

func calculate(operation: String, numberOne: Int, numberTwo: Int) -> Int?{
    switch operation{
        case "+": return numberOne + numberTwo
        case "-": return numberOne - numberTwo
        case "*": return numberOne * numberTwo
        case "/":
            if numberTwo != 0 {
                return numberOne / numberTwo
            } else {
                print("На 0 делить нельзя!")
                return nil
            }
        default: print("Вы ввелу неверную операцию")
            return nil
    }
}

var history: [String] = []

while true {
    
    
    let operation = inputData(description: "Выберите операцию: +, -, * или /. Для завершения работы введите 'q'. Для просмотра истории введите 'h'" )
    
    if operation == "q" {
        print("Exit calculate. See you!")
        break
        //exit(0) Вот так еще можно, при использовании такого метода надо импортировать Darwin
    } else if operation == "h"{
        for element in history{
            print(element)
        }
    }
    
    let numberOne = inputData(description: "Введите первое целое число: ")
    
    let numberTwo = inputData(description: "Введите второе целое число: ")
    
    print("Идет вычисление...")
    
    if let numberOne = Int(numberOne){
        if let numberTwo = Int(numberTwo){
            let result = calculate(operation: operation, numberOne: numberOne, numberTwo: numberTwo)
            if let result {
                print("Результат: \(result)")
                let localHistory = "\(numberOne) \(operation) \(numberTwo) = \(result) "
                history.append(localHistory)
                print(localHistory)
            }
        } else {
            print("Вы ввели неправильно второе число => \(numberTwo)")
        }
    } else {
        print("Вы ввели неправильно первое число => \(numberOne)")
    }
    
    print("")
    print("------------------------------------------------------------")
    print("") 
}
*/

                        // Еще один условный оператор guard
/*
 Условный оператор guard нужен для проверки важно значения, он работает как фильтр. Если условие истинное то он просто пропускает дальше выполнение кода через себя, а если значение ложное, то срабатывает блок else оператора guard. Если мы входим в тело else, то мы обязательно должны покинуть текущую область видимости с помощью break, continue, exit(), return.
 Полезно использовать guard при извлечении опционалов optional типов. Пример:
 
 let a: Int? = 5
 извлечения опционала ранее вот так было у нас
 if let a {
    print("Very good")
 } else {
    print("Bad)
 }
 а сейчас после опционалов:
 
 import Darwin

 let a: Int? = 5

 guard a == a else { print("Bad"); exit(0)}
 // дальше код что если истина

 
 */


                    // Улучшение калькулятора с помощью guard
import Darwin

func getUserData(description: String) -> String{
    print(description)
    let inputData = readLine() ?? ""
    return inputData
}

func showResult(_ result: Int){
    print("Результат: \(result)")
}

func showHistory(arrayHistory: [String]){
    print("История: ")
    for history in arrayHistory{
        print(history)
    }
}

func calculate(operation: String, firstNumber: Int, secondNumber: Int) -> Int? {
    switch operation {
        case "+": return firstNumber + secondNumber
        case "-": return firstNumber - secondNumber
        case "*": return firstNumber * secondNumber
        case "/" where secondNumber == 0: print("На ноль делить нельзя!"); return nil
        case "/": return firstNumber / secondNumber
        default:
                print("Вы ввели неправильный оператор")
                return nil
    }
}

func calculateWithUserInput(history: inout [String]) {
    let operation = getUserData(description: "Выберите операцию: +, -, * или /")
    guard operation == "+" || operation == "-" || operation == "*" || operation == "/" else {
        print("Вы ввели неправильную операцию")
        return
    }
    
    let numberOne = getUserData(description: "Введите первое целое число:")
    guard let numberOne = Int(numberOne) else {
        print("Вы ввели неправильное число")
        return
    }
    
    let numberTwo = getUserData(description: "Введите второе целое число:")
    guard let numberTwo = Int(numberTwo) else {
        print("Вы ввели неправильное число")
        return
    }
    
    let result = calculate(operation: operation, firstNumber: numberOne, secondNumber: numberTwo)
    
    guard let result = result else {return}
    if result < numberOne && operation == "/"{
        print("Мы работаем только целыми числами!", "Поэтому при делении дробная часть была исключена", separator: "\n")
    }
    showResult(result)
    
    let calculateHistory = "\(String(numberOne)) \(operation) \(String(numberTwo)) = \(String(result))"
    history.append(calculateHistory)
}




var history: [String] = []
var countCycles = Int()
while true {
    if countCycles < 1{
        print("Добро пожаловать")
    }
    countCycles += 1
    
    let action = getUserData(description: "Выберите функцию: q - Завершение работы, h - просмотр истории, c - расчет")
    
    switch action {
        case "c": calculateWithUserInput(history: &history)
        case "q": print("Завершение работы..."); exit(0)
        case "h": showHistory(arrayHistory: history)
        default:
            print("Неправильная операция")
    }
    print("-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-")
}
