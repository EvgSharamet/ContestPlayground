//
//  main.swift
//  ContestsPlayground
//
//  Created by Евгения Шарамет on 28.05.2022.
//

//Конидтерская доставка
/*
let tempValue = readLine()
let name = readLine()


guard let fullNameArr = tempValue?.split(separator: " ") else {
    exit(0)
}

let intArray = fullNameArr.map { Int($0)!}
let start = intArray[0]
let finish = intArray[1]

switch name {
case "freeze":
    start > finish ? print(finish) : print(start)
case "heat":
    start < finish ? print(finish) : print(start)
case "auto":
    print(finish)
case "fan":
    print(start)
case .none:
    exit(0)
case .some(_):
    exit(0)
}
*/

//Треугольник
/*
var arr: [Int] = []
for _ in 1...3 {
    arr.append( Int(readLine()!)!)
}
let m = arr.max()
arr.remove(at: (arr.firstIndex(of: m!)!))
m! < arr[0] + arr[1] ? print("YES") : print("NO")
*/

//Телефонные номера
/*
var arr: [[Character]] = []
for _ in 0...3 {
    var reference = readLine()!
    reference = reference.replacingOccurrences(of: "(", with: "")
    reference = reference.replacingOccurrences(of: ")", with: "")
    reference = reference.replacingOccurrences(of: "-", with: "")
    reference = reference.replacingOccurrences(of: "+", with: "")
    
    var charArr: [Character] = [Character](reference)
    
    if charArr.count == 11 && ( charArr[0] == "8"  ||  charArr[0] == "7" ) {
        charArr.remove(at: 0)
    } else {
        charArr.insert("4", at: 0)
        charArr.insert("9", at: 1)
        charArr.insert("5", at: 2)
    }
    arr.append(charArr)
}

for i in 1...3 {
    if arr[i] == arr[0] {
        print("YES")
        continue
    }
    print("NO")
}
*/

/*
//Уравнение с корнем
import Foundation

let a = Int(readLine()!)!
let b = Int(readLine()!)!
let c = Int(readLine()!)!

if c < 0 {
    print("NO SOLUTION")
    exit(0)
}

if a == 0 {
    print(" MANY SOLUTIONS")
    exit(0)
}

if ( ( ( -(c * c ) - b) / a) + b ) >= 0  &&  (( ( -(c * c ) - b) / a) + b ) != ( c * c - b ) / a {
    print (( ( -(c * c ) - b) / a), ( c * c - b ) / a)
}
else {
    print(( c * c - b ) / a)
}


//Скорая помощь
import Foundation

//K1 - квартира 1
//M - количество этажей в доме
//K2 - квартира 2
//P2 - подьезд 2
//N2 - этаж N2


var inputArr = (readLine()!)
let inputArr2 = inputArr.split(separator: " ")
let k1 = Double(inputArr2[0])!
let m = Double(inputArr2[1])!
let k2 = Double(inputArr2[2])!
let p2 = Double(inputArr2[3])!
let n2 = Double(inputArr2[4])!

print( k1 , m, k2, p2, n2)

var apartmetsOnFloor = -12
//Int(k2) % Int(p2 * n2) == 0 ? apartmetsOnFloor = Int(k2) / p2 * n2 : apartmetsOnFloor = Int(k2) / p2 * n2 + 1
print(apartmetsOnFloor)
//let h = round(k1 / apartmentsOnFloor)
print(h)
let answerP1 = round((h / m))
let answerN1 = Int(h) % Int(m)
print (Int(answerP1), answerN1)
*/

/*
// Расстановка ноутбуков
import Foundation
var arrSubscr = (readLine()!).split(separator: " ")
let h1 = Int(arrSubscr[0])!
let w1 = Int(arrSubscr[1])!
let h2 = Int(arrSubscr[2])!
let w2 = Int(arrSubscr[3])!

var max1 = max(h1, w1)
var min1 = min(h1, w1)
var max2 = max(h2, w2)
var min2 = min(h2, w2)

if max1 > max2 {
    if min1 >= max2 {
        print("\(max1 + min2) \(min1)")
        exit(0)
    } else {
        print("\(min1 + min2) \(max1)")
        exit(0)
    }
} else {
    if min2 >= max1 {
        print("\(max2 + min1) \(min2)")
        exit(0)
    } else {
        print("\(min2 + min1) \(max2)")
        exit(0)
    }
}
*/

/*
//Детали
import Foundation
func step(k: Int, m: Int) -> (details: Int, remainder: Int) {
    ( k / m , k % m)
}

//может быть для отсутсвия потерь все надо будет считать в даблах

var rl = (readLine()!).split(separator: " ")
var n = Int(rl[0])!
var k = Int(rl[1])!
var m = Int(rl[2])!

if m > k {
    print(0)
    exit(0)
}
 
var remainder = n
var details = 0
while (true) {
    if(remainder < k) {
        break
    }
    remainder -= k
    let ans = step(k: k, m: m)
    remainder += ans.remainder
    details += ans.details
}
print(details)
*/
/*
//Метро

//a — интервал между поездами (1)
//b — интервал между поездами (2)
//n — количество поездов (1)
//m — количество поездов (2)
import Foundation

let firstInterval = Int(readLine()!)!
let secondInterval = Int(readLine()!)!
let numbersOfTrain1 = Int(readLine()!)!
let numbersOfTrain2 = Int(readLine()!)!

var minForFirstPlatform = numbersOfTrain1 + firstInterval * (numbersOfTrain1 - 1)
var maxForFirstPlatform = numbersOfTrain1 + firstInterval * (numbersOfTrain1 + 1)

var minForSecondPlatform = numbersOfTrain2 + secondInterval * (numbersOfTrain2 - 1)
var maxForSecondPlatform = numbersOfTrain2 + secondInterval * (numbersOfTrain2 + 1)
///print(minForFirstPlatform,maxForFirstPlatform, minForSecondPlatform,maxForSecondPlatform)

let answerMin = max(minForSecondPlatform, minForFirstPlatform)
let answerMax = min(maxForFirstPlatform, maxForSecondPlatform)

if maxForFirstPlatform < minForSecondPlatform || maxForSecondPlatform < minForFirstPlatform {
    print( -1)
    exit(0)
}
print(answerMin,answerMax)
*/
/*
// Узник замка Иф
import Foundation
var arr: [Int] = []

let widthBrick = Int(readLine()!)!
arr.append(widthBrick)
let heightBrick = Int(readLine()!)!
arr.append(heightBrick)
let depthBrick = Int(readLine()!)!
arr.append(depthBrick)

let height = Int(readLine()!)!
let width = Int(readLine()!)!

let firstMin = arr.min()
arr.remove(at: arr.firstIndex(of: firstMin!)!)
let secondMin = arr.min()

if height >= firstMin! && width >= secondMin! || height >= secondMin! && width >= firstMin! {
    print("YES")
    exit(0)
}
print("NO")
*/

/*
//Скорая помощь
//K1 - квартира 1
//M - количество этажей в доме
//K2 - квартира 2
//P2 - подьезд 2
//N2 - этаж N2

import Foundation

var inputArr = (readLine()!)
let inputArr2 = inputArr.split(separator: " ")
let k1 = Double(inputArr2[0])!
let m = Double(inputArr2[1])!
let k2 = Double(inputArr2[2])!
let p2 = Double(inputArr2[3])!
let n2 = Double(inputArr2[4])!

let d = k2 / (m * ( p2 - 1) + n2)
let p1 = k1 / ( m * d) - 1
print(d, p1)
*/

//Система линейных уравнений - 2
//a, b, c, d, e, f.
/*Если система не имеет решений, то программа должна вывести единственное число 0. Если система имеет бесконечно много решений, каждое из которых имеет вид y=kx+b, то программа должна вывести число 1, а затем значения k и b. Если система имеет единственное решение (x0,y0), то программа должна вывести число 2, а затем значения x0 и y0. Если система имеет бесконечно много решений вида x=x0, y — любое, то программа должна вывести число 3, а затем значение x0. Если система имеет бесконечно много решений вида y=y0, x — любое, то программа должна вывести число 4, а затем значение y0. Если любая пара чисел (x,y) является решением, то программа должна вывести число 5.
Числа x0 и y0 будут проверяться с точностью до пяти знаков после точки.
*/
/*
import Foundation

let a = Double(readLine()!)!
let b = Double(readLine()!)!
let c = Double(readLine()!)!
let d = Double(readLine()!)!
let e = Double(readLine()!)!
let f = Double(readLine()!)!
//ax + by = e
//cx + dy = f
// для нолей
//if a == 0 && b == 0 && ( c != 0 || d != 0 ) {
//    print("no solution")
 //   exit(0)
//}


// где все отличны от нуля
if a / c != b / d {
    print("one solution")
    exit(0)
}

if a / c == b / d && b / d != e / f {
    print("no solution")
    exit(0)
}

if a / c ==  b / d && b / d == e / f {
    print ("many solutions")
    exit(0)
}
    
//пока из уравнения
if d == 0 || a == 0  {
    print(0)
    exit(0)
}

//let x = e - ( b * y / a )
//print(x, y)
*/


import Foundation
/*
Если интерактор выдал вердикт 0, итоговый вердикт равен 3 в случае, если программа завершилась с ненулевым кодом, и вердикту чекера в противном случае.
Если интерактор выдал вердикт 1, итоговый вердикт равен вердикту чекера.
Если интерактор выдал вердикт 4, итоговый вердикт равен 3 в случае, если программа завершилась с ненулевым кодом, и 4 в противном случае.
Если интерактор выдал вердикт 6, итоговый вердикт равен 0.
Если интерактор выдал вердикт 7, итоговый вердикт равен 1.
В остальных случаях итоговый вердикт равен вердикту интерактора.
*/
/*
let taskСompletionСode = Int((readLine()!)!
let interactorVerdict = Int((readLine()!))!
let checkerVerdict = Int((readLine()!)

switch interactorVerdict {
case 0:
    if taskСompletionСode != 0 {
        print(3)
        exit(0)
    }
    print(checkerVerdict)
case 1:
    print(checkerVerdict)
case 4:
    if taskСompletionСode != 0 {
        print(3)
        exit(0)
    }
    print(4)
case 6:
    print(0)
case 7:
    print(1)
default:
    print(interactorVerdict)
}
*/
//Кольцевая линия метро
/*
let inputString = (readLine()!).split(separator: " ")
let N = Int(inputString[0])!
let start = Int(inputString[1])!
let finish = Int(inputString[2])!

// будут случаи, когда и обратно с 6 - 5  и с 9 - 1 !
//let answer = (finish - start) < ( N - finish + start ) ? (finish - start) : ( N - finish + start )

if finish > start {
    print( (finish - start) < ( N - finish + start ) ? (finish - start)  - 1 : ( N - finish + start ) - 1 )
} else {
    print( (start - finish) < ( N - start + finish ) ? (start - finish)  - 1 : ( N - start + finish )  - 1 )
}

*/


//Даты
/*
import Foundation

let inputString = (readLine()!).split(separator: " ")
let x = Int(inputString[0])!
let y = Int(inputString[1])!

if x == y {
    print(1)
    exit(0)
}

if x > 12 || y > 12 {
    print(1)
} else {
    print(0)
}
*/

//Строительство школы
/*
import Foundation
let n = Int(readLine()!)!
let inputString = (readLine()!).split(separator: " ")
var k = 0

let mediana = inputString[n/2]
print(mediana)
*/
/*
//Точка и треугольник
struct Point {
    let x: Double
    let y: Double
}

func sqr(a : Double) -> Double {
    a * a
}

func R2(point1: Point , point2: Point) -> Double {
    (sqr(a: point2.x - point1.x) + sqr(a: point2.y - point1.y)).squareRoot()
}

func P2(first: Double, second: Double, third: Double) -> Double {
    (first + second + third) / 2.0
}

func S(firstSide: Double, secondSide: Double, thirdSide: Double, p: Double) -> Double {
    p * (p - firstSide) * ( p - secondSide) * (p - thirdSide)
}

func EQ(a: Double, b: Double) -> Bool {
    fabs(a-b) < 1e-5
}

let d = Double(readLine()!)!
let xy = readLine()!.split(separator: " ")

let A = Point(x: 0, y: 0)
let B = Point(x: d, y: 0)
let C = Point(x: 0, y: d)
let F = Point(x: Double(xy[0])!, y: Double(xy[1])!)

//print(d)
//print(F.x)
//print(F.y)

let AB = R2(point1: A, point2: B)
let BC = R2(point1: B, point2: C)
let AC = R2(point1: A, point2: C)

let AF = R2(point1: A, point2: F)
let FC = R2(point1: F, point2: C)
let BF = R2(point1: B, point2: F)

print(AB)
print(AC)
print(BC)

let ABC_P2 = P2(first: AB, second: BC, third: AC)

let ABF_P2 = P2(first: AB, second: BF, third: AF)
let AFC_P2 = P2(first: AF, second: FC, third: AC)
let FBC_P2 = P2(first: BF, second: BC, third: FC)

let ABCS = S(firstSide: AB, secondSide: BC, thirdSide: AC, p: ABC_P2)

let ABFS = S(firstSide: AB, secondSide: BF, thirdSide: AF, p: ABF_P2)
let AFCS = S(firstSide: AF, secondSide: FC, thirdSide: AC, p: AFC_P2)
let FBCS = S(firstSide: BF, secondSide: BC, thirdSide: FC, p: FBC_P2)

print(ABCS)

print(ABFS)
print(AFCS)
print(FBCS)

if EQ(a: ABCS, b:(ABFS + AFCS + FBCS)) {
    print(0)
    exit(0)
}
print("no")
*/
/*
import Foundation
class Solution {
    func isValid(_ s: String) -> Bool {
        var stack: [Character] = []
        for i in s {
            switch i {
            case "[", "{", "(" :
                stack.append(i)
            case "}":
                if "{" == stack.last {
                    stack.removeLast()
                } else {
                    return false
                }
            case ")":
                if "(" == stack.last {
                    stack.removeLast()
                } else {
                    return false
                }
            case "]":
                if "[" == stack.last {
                    stack.removeLast()
                } else {
                    return false
                }
            default:
                Swift.print("Error")
                exit(0)
            }
        }
        
        if stack.count == 0 {
            return true
        }
        return false
    }
}

let sol = Solution()
let inputString = "(]"
print (sol.isValid(inputString))
*/

/*
import Foundation
enum APIError: Error {
    case unvalidURL
    case DataIsEmpty
}

class ApiManager {
    
    func f(str: String, callBack: @escaping (Result<Data,APIError>)->Void ) {
        guard let url  = URL(string: str) else {
            callBack( Result.failure(APIError.unvalidURL))
            return
        }
        
        URLSession.shared.dataTask(with: url) {data, response, error in
            guard let data = data else {
                callBack( Result.failure(APIError.DataIsEmpty))
                return
            }
            return callBack( Result.success(data))
        }
    }
}
*/
/*
//Количество равных максимальному
var i = -1
var max = -1
var maxCounter  = 0
repeat
{
    i = Int(readLine()!)!
    if i > max {
        max = i
        maxCounter = 1
        continue
    }
    
    if i == max {
        maxCounter += 1
        continue
    }
} while i != 0

print(maxCounter)
*/

// MARK: - Min Stack
// Design a stack that supports push, pop, top, and retrieving the minimum element in constant time.
/*
struct element {
    let value: Int
    let min: Int
}

class MinStack {
    var stack: [element] = []
    init() {
        
    }
    
    func push(_ val: Int) {
        if let min = stack.last?.min {
            if min < val {
                stack.append(element(value: val,
                                     min: min))
                return
            }
        }
        stack.append(element(value: val, min: val))
    }
    
    func pop() {
        stack.removeLast()
    }
    
    func top() -> Int {
        stack.last!.value
    }
    
    func getMin() -> Int {
        stack.last!.min
    }
}
*/

//MARK: - Дома и магазины

/*
На Новом проспекте построили подряд 10 зданий. Каждое здание может быть либо жилым домом, либо магазином, либо офисным зданием.
Но оказалось, что жителям некоторых домов на Новом проспекте слишком далеко приходится идти до ближайшего магазина. Для разработки плана развития общественного транспорта на Новом проспекте мэр города попросил вас выяснить, какое же наибольшее расстояние приходится преодолевать жителям Нового проспекта, чтобы дойти от своего дома до ближайшего магазина.
*/
//1 обозначает жилой дом
//2 обозначает магазин
/*
let inputString = readLine()!.split(separator: " ")
var mask = [Int](repeating: 0, count: inputString.count)
var queue: [Int] = []

for (index, value) in inputString.enumerated() {
    if value == "2" {
        mask[index] = 1
        queue.append(index + 1)
    }
}
mask.insert(-1, at: 0)
mask.append(-1)

while queue.isEmpty == false {
    let index = queue.first!
    if mask[index - 1] == 0 {
        mask[index - 1] = mask[index] + 1
        queue.append(index - 1)
    }
    if mask[index + 1] == 0 {
        mask[index + 1] = mask[index] + 1
        queue.append(index + 1)
    }
    queue.removeFirst()
}

var max = -1
var arr: [Int] = []
mask.removeFirst()
mask.removeLast()

for (index, value) in inputString.enumerated() {
    if value == "1" {
        arr.append( mask[index] )
    }
}
print(arr.max()! - 1)
*/

/*
// MARK: - merge sort
let first: [Int] = []
let second: [Int] =  []
var answer: [Int] = []
let rightSize = first.count + second.count

var firstIndex = 0
var secondIndex = 0

while(answer.count != rightSize) {
    if firstIndex > (first.count - 1) {
        answer += second.dropFirst(secondIndex)
        break
    }
    
    if secondIndex > (second.count - 1) {
        answer += first.dropFirst(firstIndex)
        break
    }
    
    if first[firstIndex] < second[secondIndex] {
        answer.append(first[firstIndex])
        firstIndex += 1
    } else {
        answer.append(second[secondIndex])
        secondIndex += 1
    }
}
print(answer)
*/

//MARK: - 1. Two Sum
//Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
//You may assume that each input would have exactly one solution, and you may not use the same element twice.
//You can return the answer in any order.
/*
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var map: [Int: Int] = [:]
        for (index, value) in nums.enumerated() {
            map.updateValue(index, forKey: (target - value))
        }
        
        for (index, value) in nums.enumerated() {
            let answer = map[value]
            if answer != nil && answer != index {
               return [index, answer!]
            }
        }
        return [0,0]
    }
}
 
let sol = Solution()
let nums = [2,7,11,15]
let target = 9
print(sol.twoSum(nums, target))
*/

/*
//C. Изготовление палиндромов
import Foundation

let inputString: [Character] = Array(readLine()!)
//print(inputString)

var counter = 0
for i in 0...((inputString.count - 1 ) / 2) {
    if inputString[i] != inputString[inputString.count - 1 - i] {
        counter += 1
    }
}
print(counter)
*/


// MARK: - 739. Daily Temperatures

//Given an array of integers temperatures represents the daily temperatures, return an array answer such that answer[i] is the number of days
//you have to wait after the ith day to get a warmer temperature. If there is no future day for which this is possible, keep answer[i] == 0 instead.

/*
class Solution {
    var stack: [StackElement] = []
    var answer: [Int] = []
    
    struct StackElement {
        let element: Int
        let weight: Int
    }
    
    func collapseStack (newElement: Int) {
        if stack.isEmpty {
            stack.append(StackElement(element: newElement, weight: 0))
            answer.append(0)
            return
        }
        
        var newWeight = 0
        
        while stack.isEmpty == false && (stack.last!.element <= newElement) {
            newWeight += stack.removeLast().weight + 1
        }
        
        if stack.isEmpty {
            stack.append(StackElement(element: newElement,
                                      weight: 0))
            answer.append(0)
            return
        }
        stack.append(StackElement(element: newElement,
                                  weight: newWeight))
        answer.append(newWeight + 1)
    }
    
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        let reversArr: [Int] = temperatures.reversed()
        for item in reversArr {
            collapseStack(newElement: item)
        }
        return answer.reversed()
    }
}

let sol = Solution()
let temperatures = [73,74,75,71,69,72,76,73]
print(sol.dailyTemperatures(temperatures))
*/

// MARK: - 933. Number of Recent Calls

//You have a RecentCounter class which counts the number of recent requests within a certain time frame.
//
//Implement the RecentCounter class:
//
//RecentCounter() Initializes the counter with zero recent requests.
//int ping(int t) Adds a new request at time t, where t represents some time in milliseconds, and returns the number of requests that has happened in the past 3000 milliseconds (including the new request). Specifically, return the number of requests that have happened in the inclusive range [t - 3000, t].
//It is guaranteed that every call to ping uses a strictly larger value of t than the previous call.
/*
class RecentCounter {
    var queue: [Int] = []

    func ping(_ t: Int) -> Int {
        if queue.isEmpty {
            queue.append(t)
            return 1
        }
        
        while(queue.isEmpty == false && (t - queue.first!) > 3000) {
            queue.removeFirst()
        }
        queue.append(t)
        return queue.count
    }
}
*/

//
//// MARK: - Очередь максимумов на двух стеках
//
//class MinStack {
//    struct Element {
//        let value: Int
//        let min: Int
//    }
//
//    var stack: [Element] = []
//
//    func push(_ val: Int) {
//        if let min = stack.last?.min {
//            if min < val {
//                stack.append(Element(value: val,
//                                     min: min))
//                return
//            }
//        }
//        stack.append(Element(value: val, min: val))
//    }
//
//    func pop() {
//        stack.removeLast()
//    }
//
//    func top() -> Int? {
//        stack.last?.value
//    }
//
//    func getMin() -> Int? {
//        stack.last?.min
//    }
//}
//
//
//class MinQueue {
//    var inStack = MinStack()
//    var outStack = MinStack()
//
//    func push(value: Int ) {
//        inStack.push(value)
//    }
//
//    func pop() {
//        if outStack.stack.isEmpty && inStack.stack.isEmpty == false {
//            inToOut()
//            outStack.pop()
//            return
//        }
//
//        outStack.pop()
//    }
//
//    func min() -> Int? {
//        return inStack.getMin()! < outStack.getMin()! ? inStack.getMin() : outStack.getMin()
//    }
//
//    private func inToOut() {
//        while inStack.stack.isEmpty == false {
//            outStack.push(inStack.top()!)
//            inStack.pop()
//        }
//    }
//}
//
//let input = [ 1, 45, -4, 65, 66, -23 ,89, 567, -89, 92, 22, 12, 4]
//let minQ = MinQueue()
//
//for item in input {
//    minQ.push(value: item)
//    print(minQ.inStack.stack)
//    print(minQ.outStack.stack)
//}
//

//MARK: - (DSU) система непересекающихся множеств
/*
class DSU {
    
    var rank: [Int] = []
    var parents: [Int] = []
    
    init(size: Int) {
        for i in 0...size - 1 {
            parents.append(i)
            rank.append(1)
        }
    }
    
    func root(value: Int) -> Int {
        if parents[value] == value {
            return value
        }
        else {
            parents[value] = root(value: parents[value])
            return parents[value ]
        }
    }
    
    func merge(x: Int, y: Int) -> Bool {
        let xRoot = root(value: x)
        let yRoot = root(value: y)
        
        if xRoot == yRoot {
            return true
        }
        
        if rank[xRoot] > rank[yRoot] {
            parents[yRoot] = xRoot
            return false
        }
        
        if rank[yRoot] > rank[xRoot] {
            parents[xRoot] = yRoot
            return false
        }
        
        parents[xRoot] = yRoot
        rank[yRoot] += 1
        
        return false
    }
}

let dsu = DSU(size: 10)
dsu.merge(x:  2, y: 6)
dsu.merge(x: 5, y: 6)
print(dsu.parents)
*/
//
// MARK: - D. Реструктуризация компании

 //и type = 1 или type = 2, то запрос представляет собой решение кризисного менеджера об объединении отделов соответственно первого или второго вида. Если type = 3,
//class DSU {
//    var parents: [Int] = []
//    var rank: [Int] = []
//
//    func executeRequest(req: Int, x: Int, y: Int) {
//        if req == 1 {
//            merge(x: x, y: y)
//        }
//
//        if req == 2 {
//            for i in x...y {
//                merge(x: x, y: i)
//            }
//        }
//
//        if req == 3 {
//            root(value: x) == root(value: y) ? print("YES") : print("NO")
//        }
//    }
//
//    init(size: Int) {
//        for i in 0...size - 1 {
//            parents.append(i)
//            rank.append(1)
//        }
//    }
//
//    private func root(value: Int) -> Int {
//        if parents[value] == value {
//            return value
//        }
//
//        parents[value] = root(value: parents[value])
//        return parents[value]
//    }
//
//    private func merge(x: Int, y: Int) -> Bool {
//        let xRoot = root(value: x)
//        let yRoot = root(value: y)
//
//        if xRoot == yRoot {
//            return true
//        }
//
//        if rank[xRoot] > rank[yRoot] {
//            parents[yRoot] = xRoot
//            return false
//        }
//
//        if rank[yRoot] > rank[xRoot] {
//            parents[xRoot] = yRoot
//            return false
//        }
//
//        if rank[yRoot] == rank[xRoot] {
//            parents[xRoot] = yRoot
//            rank[yRoot] += 1
//        }
//        return false
//    }
//}
//
//let inputString = readLine()!.split(separator: " ")
//let n = Int(inputString[0])!
//let q = Int(inputString[1])!
//
//let dsu = DSU(size: n)
//
//for _ in 1...q {
//    let request = readLine()!.split(separator: " ")
//    dsu.executeRequest(req: Int(request[0])!, x: Int(request[1])!, y: Int(request[2])!)
//}


// MARK: - Бинарный поиск

//
//var input  = [ 1, 10, 12, 15, 16, 20, 22, 24, 29, 31, 32, 36, 67, 78, 98]
//
//class Solution {
//    func findElement(arr: [Int], value: Int) -> Int? {
//        var left = 0
//        var medium  = arr.count / 2
//        var right = arr.count - 1
//
//        while( left <= right)   {
//            print("left = \(left), medium = \(medium), right = \(right)")
//
//            if arr[medium] == value {
//                return medium
//            }
//
//            if value > arr[medium] {
//                left = medium + 1
//            } else {
//                right = medium - 1
//            }
//            medium = left + (right - left) / 2
//        }
//        return nil
//    }
//}
//
//let sol = Solution()
//for (index, value) in input.enumerated() {
//    print("index = \(index), value = \(value)")
//}
//
//print(sol.findElement(arr: input, value: 98))
//
//
// MARK: - последовательность со смещением

// Дана отсортированная последовательность, в которой произошло смещение (кольцевое) элементов. Найти где произошло смщещение
//import Foundation
//
//class BinSearch {
//    func found(array: [Int]) -> Int {
//        var left = 0
//        var right = array.count - 1
//        var medium = array.count / 2
//
//        while (left != right) {
//            print("left = \(array[left]), medium = \(array[medium]), right = \(array[right])")
//            if array[left] < array[medium] {
//                left = medium
//            } else {
//                right = medium
//            }
//            medium = left + (right - left) / 2
//        }
//        return array[medium]
//    }
//}
//
//let input = [34, 39, 60, 100, 102 , 103, 104, 105, 106, 32]
//print(BinSearch().found(array: input))

//MARK: - Динамика
/*
// Поиск в двумерном массиве
let n = 4
let inputString = [-85,  72, -14, -93, -153,
                    163, -205, -166, -17, -49,
                    140, -64, -62, -144, -64,
                    -38, -48,   4,  53, -45,
                     53, -89, 141, -77,  -2]


var arr: [[Int]] = Array(repeating: Array(repeating: 0, count: 5), count: 5)

var counter = 0
for i in 0...n {
    for j in 0...n {
        print(i + j)
        arr[i][j] = inputString[counter]
        counter += 1
    }
}

var answerArr = arr

for i in answerArr {
    print(i)
}

for i in 1...n {
    answerArr[i][0] += answerArr[i - 1][0]
    answerArr[0][i] += answerArr[0][i - 1]
}

print(" ")
for i in answerArr {
    print(i)
}

for i in 1...n {
    for j in 1...n {
        if answerArr[i][j - 1] > answerArr[i - 1][j] {
           answerArr[i][j] += answerArr[i][j - 1]
        } else {
            answerArr[i][j] += answerArr[i - 1][j]
        }
    }
}

print(" ")
for i in answerArr {
    print(i)
}

print( answerArr[n][n])
*/


// MARK: - 70. Climbing Stairs
//You are climbing a staircase. It takes n steps to reach the top.
//ach time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?

/*
class Solution {
    var arr: [Int] = [0, 1, 2]
    
    func climbStairs(_ n: Int) -> Int {
        if n <= 2 {
            return arr[n]
        }
        
        for i in 3...n {
            arr.append(arr[i - 1] + arr[i - 2])
        }
        return arr[n]
    }
}

let sol = Solution()
print(sol.climbStairs(1))
*/



// MARK: - 695. Max Area of Island
//
//class Solution {
//    struct cellIndex {
//        let i: Int
//        let j: Int
//    }
//
//    var gridWithWrap: [[Int]] = []
//
//    func fillGridWithWrap(grid: [[Int]], height: Int, width: Int) -> [[Int]] {
//        var gridWithWrap = Array(repeating: Array(repeating: -1, count: width + 2), count: height + 2)
//
//        for i in (0...height - 1) {
//            for j in (0...width  - 1) {
//                gridWithWrap[i + 1][j + 1] = grid[i][j]
//            }
//        }
//        return gridWithWrap
//    }
//
//    func discoverIsland(target: cellIndex) -> Int {
//        var queue: [cellIndex] = []
//        queue.append(cellIndex(i: target.i, j: target.j))
//        var counter = 0
//        gridWithWrap[target.i][target.j] = 5
//
//        while queue.isEmpty == false {
//            counter += 1
//            let element = queue.removeFirst()
//            if gridWithWrap[element.i - 1][element.j] == 1 {
//                queue.append(cellIndex(i: element.i - 1, j: element.j))
//                gridWithWrap[element.i - 1][element.j] = 5
//            }
//
//            if gridWithWrap[element.i][element.j - 1] == 1 {
//                queue.append(cellIndex(i: element.i, j: element.j - 1))
//                gridWithWrap[element.i][element.j - 1] = 5
//            }
//
//            if gridWithWrap[element.i + 1][element.j] == 1 {
//                queue.append(cellIndex(i: element.i + 1, j: element.j))
//                gridWithWrap[element.i + 1][element.j] = 5
//            }
//
//            if gridWithWrap[element.i][element.j + 1] == 1 {
//                queue.append(cellIndex(i: element.i, j: element.j + 1))
//                gridWithWrap[element.i][element.j + 1] = 5
//            }
//        }
//
//        return counter
//    }
//
//    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
//        let gridHeight = grid.count
//        let gridWidth = grid[0].count
//        gridWithWrap = fillGridWithWrap(grid: grid, height: gridHeight, width: gridWidth)
//        var max = 0
//
//        for i in 1...gridHeight {
//            for j in 1...gridWidth {
//                if gridWithWrap[i][j] == 1 {
//                    let countResult = discoverIsland(target: cellIndex(i: i , j: j))
//                    if max < countResult {
//                        max = countResult
//                    }
//                }
//            }
//        }
//        return max
//    }
//}
//
//
//let grid = [[0,0,1,0,0,0,0,1,0,0,0,0,0],[0,0,0,0,0,0,0,1,1,1,0,0,0],[0,1,1,0,1,0,0,0,0,0,0,0,0],[0,1,0,0,1,1,0,0,1,0,1,0,0],[0,1,0,0,1,1,0,0,1,1,1,0,0],[0,0,0,0,0,0,0,0,0,0,1,0,0],[0,0,0,0,0,0,0,1,1,1,0,0,0],[0,0,0,0,0,0,0,1,1,0,0,0,0]]
//
//let sol = Solution()
//
//print(sol.maxAreaOfIsland(grid))
//
// MARK: - 1091. Shortest Path in Binary Matrix
//
//Given an n x n binary matrix grid, return the length of the shortest clear path in the matrix. If there is no clear path, return -1.
//A clear path in a binary matrix is a path from the top-left cell (i.e., (0, 0)) to the bottom-right cell (i.e., (n - 1, n - 1)) such that:
//All the visited cells of the path are 0.
//All the adjacent cells of the path are 8-directionally connected (i.e., they are different and they share an edge or a corner).
//The length of a clear path is the number of visited cells of this path.
//
//
//class Solution {
//    func shortestPathBinaryMatrix(_ grid: [[Int]]) -> Int {
//
//        return -1
//    }
//}
//
//let sol = Solution()
//let grid = [[0,0,0],[1,1,0],[1,1,0]]
//
//print(sol.shortestPathBinaryMatrix(grid))
//
//// Интерн мобайл Яндекс
//
// import Foundation
//
//let sn = readLine()!.split(separator: " ")
//let S = Int(sn[0])!
//let N = Int(sn[1])!
//var inputString = readLine()!.split(separator: " ")
//var max = Int(inputString[0])!
//var min = max
//
//if N == 1 {
//    print(abs(S - min))
//    exit(0)
//}
//
//for item in (inputString) {
//    let it = Int(item)!
//    if it > max {
//        max = it
//    }
//    if it < min {
//        min = it
//    }
//}
//
//
//var arr: [Int] = [min, max, S]
//arr.sort()
//
//if S == arr[0] {
//    print( abs(S - arr[2]))
//    exit(0)
//}
//
//if S == arr[1] {
//    abs(S - arr[0]) < abs(S - arr[2]) ? print( 2 * abs(S - arr[0]) + abs(S - arr[2])) : print( 2 * abs(S - arr[2]) + abs(S - arr[0]))
//    exit(0)
//}
//
//print( abs(S - arr[0]))
//exit(0)
//
//import Foundation
//
//func happy(dog: Int, collar: Int) -> Int {
//    if collar <= dog {
//        return 0
//    }
//
//    let r = collar - dog
//    if r > 100 {
//        return 30
//    }
//    return r / 2
//}
//
//let dec: [Int] = []
//let n = Int(readLine()!)!
//var dogsSub = readLine()!.split(separator: " ")
//var collarsSub = readLine()!.split(separator: " ")
//var dogs: [Int] = []
//var collars: [Int] = []
//
//for i in 0...n-1 {
//    dogs.append(Int(dogsSub[i])!)
//    collars.append(Int(collarsSub[i])!)
//}
//
//var min = Int.max
//var minNum = 0
//
//for num in 1...n {
//    var hap = 0
//    for (index, value) in dogs.enumerated() {
//        hap += happy(dog: value, collar: collars[index])
//    }
//
//    if hap < min {
//        min = hap
//        minNum = num
//    }
//
//    let first = dogs.removeFirst()
//    dogs.append(first)
//}
//
//print( minNum, min)
//


//
//34. Find First and Last Position of Element in Sorted Array
//Given an array of integers nums sorted in non-decreasing order, find the starting and ending position of a given target value.
//If target is not found in the array, return [-1, -1].
//You must write an algorithm with O(log n) runtime complexity.
//
// class Solution {
//     enum Edge {
//         case left
//         case right
//     }
//
//     func binFound(nums: [Int], target: Int, edge: Edge) -> Int {
//         switch edge {
//         case .left:
//             if nums[0] == target {
//                 return 0
//             }
//             var left = 1
//             var medium = nums.count / 2
//             var right = nums.count - 1
//
//             if nums[left] > target {
//                 return -1
//             }
//
//             while( !(nums[medium - 1] < target && nums[medium] == target)) {
//                 if (left >= right) {
//                     return -1
//                 }
//              //   print("left = \(left), medium = \(medium), right = \(right)")
//                 if target > nums[medium] {
//                     left = medium + 1
//                 } else {
//                     right = medium - 1
//                 }
//                 medium = left + (right - left) / 2
//             }
//             return medium
//         case .right:
//
//             if nums[nums.count - 1] == target {
//                 return nums.count - 1
//             }
//
//             var left = 0
//             var medium = nums.count / 2
//             var right = nums.count - 2
//             if nums[right] < target {
//                 return -1
//             }
//
//             while( !(nums[medium + 1] > target && nums[medium] == target )) {
//                 if (left >= right ) {
//                     return -1
//                 }
//                 if target >= nums[medium] {
//                     left = medium + 1
//                 } else {
//                     right = medium - 1
//                 }
//                 medium = left + (right - left) / 2
//             }
//             return medium
//         }
//     }
//
//     func searchRange(_ nums: [Int], _ target: Int ) -> [Int] {
//         if nums.count == 0 {
//             return [-1, -1]
//         }
//
//         if nums.count == 1 {
//             if nums[0] == target {
//                 return [0,0]
//             }
//             return [-1,-1]
//         }
//
//         if nums.count == 2 {
//             guard let ind = nums.firstIndex(of: target) else {
//                 return [-1, -1]
//             }
//             if ind == 0 {
//                 if nums[ind] == nums[ind + 1] {
//                     return [0,1]
//                 }
//                 return [0,0]
//             }
//
//             if ind == 1 {
//                 return [1,1]
//             }
//         }
//
//         return [ binFound(nums: nums, target: target, edge: Edge.left),
//                  binFound(nums: nums, target: target, edge: Edge.right)]
//     }
// }
//
//let nums: [Int] = [-3,-2,-1]
//let target = 0
//
// let sol = Solution()
// print (sol.searchRange(nums, target))
//


