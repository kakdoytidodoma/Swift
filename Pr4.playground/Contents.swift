import UIKit

//1. Список продуктов, которые нужны для приготовления борща, представлен множеством borshProducts. Список имеющихся продуктов представлен множеством haveProducts. Требуется вывести список продуктов, которые нужно купить для приготовления борща.
var prductsForBorsh: Set = ["Капуста", "Свекла", "Мясо", "Картошка","Сметана","Вода"]
var productsWeHave: Set = ["Сметана", "Вода", "Картошка"]

let weNeedToBuy = prductsForBorsh.subtracting(productsWeHave)
print ("Нам нужно дукупить :\(weNeedToBuy)")

//2. Ваня живёт в квартире в центре Екатеринбурга. Дом, в котором находится его квартира, обслуживает несколько интернет-провайдеров. Ваня планирует переселиться в другой дом, который обслуживают другие провайдеры. Некоторые из провайдеров обслуживают оба дома. Задача - проверить, к каким из провайдеров Ваня должен подключиться, чтобы после переезда не пришлось менять провайдера?

let currentProviders: Set<String> = ["Провайдер A", "Провайдер B", "Провайдер C"]

let newProviders: Set<String> = ["Провайдер B", "Провайдер C", "Провайдер D"]

let commonProviders = currentProviders.intersection(newProviders)

print("Ваня должен подключиться к следующим провайдерам:")
for provider in commonProviders {
    print(provider)
}
//3. Алина посетила два разных курса по веб-разработке. В каждом из курсов есть свой перечень тем для изучения. Некоторые темы могут повторяться. Задача - вывести полный перечень, который Алина освоила на обоих курсах.

//4. Создать словарь Животных типа [String: Int], где ключ - Название животного, а значение - его вес в килограммах. Проверить, способен ли человек поднять одно из животных, имеющихся в словаре (порог поднятия считать равным 80 кг). Результат распечатать в консоль в виде: «Курица весит 3 кг. Я могу её поднять» или «Слон весит 1500 кг. Он слишком тяжёлый для меня»
var animals: [String: Int] = [
    "Курица": 3,
    "Корова": 100,
    "Гусь" : 5,
    "Коза" : 85,
]
let maxWeight = 80

for (animal, weight) in animals{
    if weight <= maxWeight{
        print ("Я могу поднять \(animal) весом \(weight) кг")
    } else {
        print(" \(animal) весит \(weight) кг. Она слишком тяжёлая для меня")
    }
}





//5. В кошельке (словарь) лежат банковские карты. Каждая из них имеет название (ключ), пин-код и сумму остатка. Владелец берёт одну из карт и производит оплату перечня товаров определённой стоимостью. Перечень товаров хранится в словаре типа [String:Int], где ключ - название товара, а значение - его стоимость. Оплата пройдёт успешно, если владелец карты вводит верный пин-код от выбранной им карты, а также если сумма остатка на карте не менее, чем сумма покупки. Выведите на консоль сообщение об успешной покупке или о невозможности произвести транзакцию.

// Словарь для хранения банковских карт
var wallet: [String: (pinCode: String, balance: Double)] = [
    "Visa": ("1234", 1000.0),
    "MasterCard": ("5678", 500.0),
    "AmericanExpress": ("9012", 2000.0)
]

// Словарь для хранения перечня товаров и их стоимости
let inventory: [String: Double] = [
    "Laptop": 800.0,
    "Smartphone": 500.0,
    "TV": 1200.0,
    "Headphones": 150.0
]


func makePayment(with cardName: String, for itemName: String) {

    if let cardInfo = wallet[cardName] {

        if let itemPrice = inventory[itemName] {

            if cardInfo.balance >= itemPrice {
                let newBalance = cardInfo.balance - itemPrice
                wallet[cardName] = (cardInfo.pinCode, newBalance)
                print("Purchase of \(itemName) for \(itemPrice) successful. New balance: \(newBalance)")
            } else {
                print("Insufficient funds")
            }
        } else {
            print("Item \(itemName) not found in inventory")
        }
    } else {
        print("Invalid card name")
    }
}


makePayment(with: "Visa", for: "Laptop")
