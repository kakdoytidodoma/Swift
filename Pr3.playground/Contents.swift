import UIKit

//1. Есть массив целых чисел, надо проверить, сумма первого и последнего элементов делится ли на 5-й элемент. Если да, то первый элемент сделать такой же как 3й, а 4й поменять местами со 2м.
//Программа должна отработать без ошибки при любом количестве элементов
var celChisl = [3, 3, 4, 5, 6, 2, 8, 9]

var firstEl = celChisl.first ?? 0
var lastEl = celChisl.last ?? 0

var sum = firstEl + lastEl
if sum % celChisl[4] == 0 {
    celChisl[0] = celChisl[2]
    celChisl.swapAt(3, 1)
    print (celChisl)
} else {
    print (celChisl)
}


//2. В строковом массиве содержатся два элемента - марки автомобилей. Требуется проверить, в алфавитном ли порядке они расположены. Если нет, поменять их местами. Также требуется вывести в консоль название автомобиля с минимальным количеством символов
var cars = ["Mersedes", "BMW"]

var carsIsOnAlpf = cars == cars.sorted()
if carsIsOnAlpf == true {
    let smallEl = cars.min()
    print(smallEl!)
} else {
    let carsSorted = cars.sorted()
    let smallEl = cars.min()
    print(smallEl!)
}




//3. Есть массив с цифрами от 2 до 9. Требуется, используя этот массив, вывести произвольную (случайную, рандомную) строку из таблицы умножения
//ПРИМЕР: 2 * 2 = 4

func generateMultiplicationExample() {
    var arrayOfChis = [2, 3, 4, 5, 6, 7, 8, 9]
    guard let firstRandomEl = arrayOfChis.randomElement(),
          let secondRandomEl = arrayOfChis.randomElement() else {
        print("ti napisal huinu")
        return
    }

    let result = firstRandomEl * secondRandomEl
    print("\(firstRandomEl) * \(secondRandomEl) = \(result)")
}

generateMultiplicationExample()
//guard let firstRandomEl = arrayOfChis.randomElement(),
//      let secondRandomEl = arrayOfChis.randomElement() else{
//    print("ti napisal huinu")
//    return
//}

//print ((firstRandomEl!), "*", (secondRandomEl!), "=", resault)

//4. Два человека соревнуются в троеборье, которое состоит из подтягивания, подъёмов туловища и приседаний. Результаты записываются в виде кортежей отдельно для каждого игрока. За 1
//подтягивание атлет получает 70 очков, за подъём туловища - 45 очков, а за приседание - 50 очков. Создайте такие кортежи и заполните их значениями. Определите победителя в состязании.
var competition = (70, 45, 50)
let vasya = (5, 10, 50)
let igor = (7, 8, 55)

var firstSport = (vasya.0 * competition.0) + (vasya.1 * competition.1) + (vasya.2 * competition.2)
var secondSport = (igor.0 * competition.0) + (igor.1 * competition.1) + (igor.2 * competition.2)

var winner = firstSport > secondSport ? "Победил Вася со счетом : \(firstSport)" : "Победил Игорь со счетом : \(secondSport)"
print(winner)
//лвлвлвлвл
//var winner = firstSport > secondSport ? "Победил Вася со счетом :"/(firstSport) :  ("Победил Игорь со счетом :"/(secondSport))





//5. Данные об успеваемости учеников по математике хранятся в массиве кортежей в формате Фамилия - оценка. Требуется:
//- Отсортировать массив по успеваемости в порядке от лучших оценок к худшим
//- Отсортировать массив в обратном алфавитном порядке
//- Сформировать массив проблемных учеников, у которых оценки ниже, чем «4»
//- Найти средний балл в классе
//6. Покупатель стоит на кассе с корзинкой продуктов. Корзинка представлена в виде массива. Элемент массива - кортеж, содержащий в себе название, цену и количество продукта данной позиции.
//- Посчитайте стоимость продуктов в корзине.
//- Определите, за какой из продуктов покупатель заплатит больше всего.
//- Отсортируйте продукты в порядке убывания стоимости
//7. Есть три массива - массив с фамилиями учеников, массив с их оценками по математике и массив с их оценками по биологии.
//Заранее известно, что количество элементов во всех массивах одинаковое. Требуется получить массив, содержащий строки вида:
