import UIKit
import Foundation

// задание 1. Решить квадратное уравнение - ax*x + bx + c = 0


var a: Double = 4
var b: Double = -7
var c: Double = -2

var x1: Double
var x2: Double

var D: Double = b * b - 4 * a * c

if (D > 0) {
    x1 = (-b + sqrt(D)) / (2 * a)
    x2 = (-b - sqrt(D)) / (2 * a)
    print("Уровнение имеет 2 коря: х1 = \(x1), x2 = \(x2)")
    
} else if (D == 0) {
    x1 = -b / 2 * a
    print("Уровнение имеет один корень: Х1,2 = \(x1)")
    
} else {
    print ("Уровнение не имеет корней")
}

// задание 2. Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.

let cat1: Double = 2
let cat2: Double = 4

var S: Double = cat1 * cat2 * 0.5
var Gip: Double = sqrt(cat1 * cat1 + cat2 * cat2)
var P: Double = cat1 + cat2 + Gip

print("Площать прямоугольного треугольника равна \(S), периметр равен \(P), гипотенуза равна \(Gip)")


// задание со *
// Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.

var PV: Double = 1000
let r: Double = 5
let Years: Double = 5

PV = PV + (PV * r / 100);
PV += (PV * r / 100);
PV += (PV * r / 100);
PV += (PV * r / 100);
PV += (PV * r / 100);

print("Сумма вклада через \(Years) лет будет равна \(PV)")
