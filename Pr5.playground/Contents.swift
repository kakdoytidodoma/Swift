import UIKit


//1. В первый день спортсмен пробежал х километров, а затем он каждый день увеличивал пробег на 10% от предыдущего значения.
//По данному числу у определите номер дня, на который пробег спортсмена составит не менее у километров.
var start: Double = 2.0
var days = 1
var end: Double = 5.0
while start < end {
    start += start * 0.1
    days += 1
}

print ("probezhit sostavit ne meneе u kilometerov \(days) dnei")


//2. Вклад в банке составляет х рублей. Ежегодно он увеличивается на р процентов, после чего дробная часть копеек отбрасывается.
//Каждый год сумма вклада становится больше. Определите, через сколько лет вклад составит не менее у рублей.
var vklad: Double = 10000.0
var procent: Double = 0.15
var years = 0

repeat {
    vklad = round(vklad + vklad * procent)
    years += 1
} while vklad < 15000

print("Через \(years) лет вклад составит не менее \(Int(vklad)) рублей.")
//3. Известно число жителей, проживающих в каждом доме улицы.
//Нумерация домов проведена подряд. Дома с нечетными номерами расположены на одной стороне улицы, с четными - на другой. На какой стороне улицы проживает больше жителей? Использовать только один оператор цикла.
let doma: [Int: Int] = [
    2:5,
    4:2,
    6:3,
    8:6,
    3:1,
    5:4,
    7:2,
    9:8,
]
var chet = 0
var neChet = 0
for (index, num) in doma{
    if index % 2 == 0{
        chet += num
    } else {
        neChet += num
    }
}
if chet > neChet{
    print("В четных домах проживает людей больше их аж \(chet)")
} else {
    print("В нечетных домах проживает людей больше их аж \(neChet)")
}

//4. Известны стоимости (в долларах) нескольких марок легковых автомобилей и мотоциклов. Верно ли, что средняя стоимость автомобилей превышает среднюю стоимость мотоциклов более чем в 3 раза?
let carsAndBikes: [String: Double] = [
    "Toyota Corolla": 25000.0,
    "Honda Civic": 22000.0,
    "Kawasaki Ninja": 9000.0,
    "Yamaha R1": 15000.0,
    "Ford Mustang": 35000.0,
    "Ducati Panigale": 20000.0
]

var totalCarsCost: Double = 0
var totalBikesCost: Double = 0
var numCars = 0
var numBikes = 0

for (vehicle, cost) in carsAndBikes {
    if vehicle.contains("Toyota") || vehicle.contains("Honda") || vehicle.contains("Ford") {
        totalCarsCost += cost
        numCars += 1
    } else {
        totalBikesCost += cost
        numBikes += 1
    }
}

let avgCarCost = totalCarsCost / Double(numCars)
let avgBikeCost = totalBikesCost / Double(numBikes)

print("Средняя стоимость автомобиля: $\(avgCarCost)")
print("Средняя стоимость мотоцикла: $\(avgBikeCost)")

if avgCarCost > avgBikeCost * 3 {
    print("Да, средняя стоимость автомобиля превышает среднюю стоимость мотоцикла более чем в 3 раза")
} else {
    print("Нет, средняя стоимость автомобиля не превышает среднюю стоимость мотоцикла более чем в 3 раза.")
}


//5. Известен возраст группы людей в списке. Какой человек указан в списке раньше: самый старший или самый молодой?
let ages: [Int] = [35, 28, 42, 19, 55, 22]

var oldestAge = ages.max() ?? 0
var youngestAge = ages.min() ?? 0

if let oldestIndex = ages.firstIndex(of: oldestAge),
   let youngestIndex = ages.firstIndex(of: youngestAge) {
    if oldestIndex < youngestIndex {
        print("The oldest person is listed first.")
    } else {
        print("The youngest person is listed first.")
    }
} else {
    print("Unable to determine who is listed first.")
}

//6. Размеры нескольких параллелепипедов (длина, ширина, высота) хранятся в массиве кортежей. Определить: а) максимальный объем фигуры; б) минимальный объем фигуры; в) индекс фигуры, имеющей максимальный объем; г) индекс фигуры, имеющей минимальный объем.

// не хочу я это решать 


//7. Найти среднее арифметическое четных положительных элементов массива, стоящих на нечетных позициях
let arr = [2,44,51,3,4,6,4,3,24,53,64,76,88,33]
var count = 0
var sum = 0

for (i, value) in arr.enumerated() {
    if i % 2 != 0{
        sum += value
        count += 1
    }
}
var srAr = Double(sum) / Double(count)

print ("\(srAr)")
