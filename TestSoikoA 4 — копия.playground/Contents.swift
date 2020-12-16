import UIKit

enum Ingridients: Double {
    case orange = 2.3
    case mint = 4.5
    case spakrlingWater = 3.2
    case cranberry = 5.4
    case lime = 0.9
    case lemon = 1.9
    case raspberry = 8.3
    case coldWater = 7.5
    case nonAlchocolRedWine = 5.2
}
enum CoctailName: CaseIterable {
    case orangeMojito
    case cranberrySparkler
    case pinkLemonade
    case sangriaPunch
}

var cocktails: [CoctailName: [Ingridients]] = [CoctailName.orangeMojito: [Ingridients.orange, Ingridients.mint, Ingridients.lime, Ingridients.spakrlingWater],
                                               CoctailName.cranberrySparkler: [Ingridients.cranberry, Ingridients.spakrlingWater, Ingridients.lime, Ingridients.orange],
                                               CoctailName.pinkLemonade: [Ingridients.lemon, Ingridients.orange, Ingridients.raspberry, Ingridients.mint, Ingridients.coldWater],
                                               CoctailName.sangriaPunch: [Ingridients.nonAlchocolRedWine, Ingridients.orange, Ingridients.lemon, Ingridients.lime, Ingridients.coldWater]]


var cocktailPrices: [CoctailName: Double] = [CoctailName.orangeMojito: 10.9,
                                             CoctailName.cranberrySparkler: 11.8,
                                             CoctailName.pinkLemonade: 24.5,
                                             CoctailName.sangriaPunch: 17.8]
print(cocktailPrices)  // конец четвертого пункта

var sum: Double = 0.0
for coctail in cocktailPrices {
    sum = sum + (coctail.1)
}
let averagePrice = sum / Double(cocktailPrices.count)
print("Средняя цена коктейльной карты is \(averagePrice)")  // конец пятого пункта

var fromEnamCoctailName = CoctailName.allCases
    .map({ "\($0)" })
    .joined(separator: ", ")
print(fromEnamCoctailName)

var arrayFromEnamCoctailName: [String] = []
for _ in fromEnamCoctailName {
    arrayFromEnamCoctailName.append(fromEnamCoctailName)
    print(arrayFromEnamCoctailName)
}

var randomCoctail = arrayFromEnamCoctailName.randomElement()!
switch randomCoctail {
case randomCoctail:
    print(randomCoctail)
default:
    print("sangriaPunch")
}    // конец шестого пункта

let client = (name: "orangeMojito", price: 20.0)
switch (client.name, client.price) {
case (_,let price) where price >= 10.9:
    print("Возьмите, пожалуйста, свой коктейль")
case (_,let price) where price <= 10.9:
    print("Ввыберите другой коктель, пожалуйста, другой коктейль")
default: break
}


