import UIKit

//1. Описать несколько структур – любой легковой автомобиль SportCar и любой грузовик TrunkCar.
//2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.
//3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.
//4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.
//5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.
//6. Вывести значения свойств экземпляров в консоль.

enum engineStatus: String {
    case on = "Заведен", off = "Заглушен"
}

enum actionEngine {
    case start, turnOff
}

enum windowsStatus: String  {
    case open = "открыты", close = "закрыты"
}

enum trunk {
    case empty, full, weight(Int)
}


struct SportCar {
    let brand: String
    let year: Int
    var trunkVolume: trunk
    var engine: engineStatus
    var windows: windowsStatus
    var fullTrunkVolume: Double


mutating func acEngine(action: engineStatus) {
    switch action {
    case .off:
        print(action.rawValue)
        self.engine = .off
    case .on:
        print(action.rawValue)
        self.engine = .on
    }
}
    
    func engineValue() {
    print(engine.rawValue)
    }
    
    var trunkStatus: String {
        switch trunkVolume {
        case .empty:
            return "Багажник пустой"
        case .full:
            return "Багажник полный"
        case .weight(let kg):
            return "Багажник заполнен на \(kg) тонн"
        }
    }
    
    func descriptionSportCar(){
        print("Автомобиль марки \(brand), \(year) года выпуска. Объем богажника \(fullTrunkVolume). Богажник заполнен на \(trunkStatus) кг. Статус двигателя - \(engine.rawValue). Статус окон - \(windows.rawValue)")
    }
}

struct TrunkCar {
    let brand: String
    let year: Int
    var trunkVolume: trunk
    var engine: engineStatus
    var windows: windowsStatus
    var fullTrunkVolume: Double


mutating func acEngine(action: engineStatus) {
    switch action {
    case .off:
        print(action.rawValue)
        self.engine = .off
    case .on:
        print(action.rawValue)
        self.engine = .on
    }
}
    func engineValue() {
    print(engine.rawValue)
    }
    
    var trunkStatus: String {
        switch trunkVolume {
        case .empty:
            return "Багажник пустой"
        case .full:
            return "Багажник полный"
        case .weight(let kg):
            return "Багажник заполнен на \(kg) тонн"
        }
    }
    
    func descriptionTrunkCar(){
        print("Автомобиль марки \(brand), \(year) года выпуска. Объем богажника \(fullTrunkVolume). Богажник заполнен на \(trunkStatus) кг. Статус двигателя - \(engine.rawValue). Статус окон - \(windows.rawValue)")
    }
}

var sportCar1 = SportCar(brand: "Audi", year: 2020, trunkVolume: .empty, engine: .off, windows: .close, fullTrunkVolume: 120)
var sportCar2 = SportCar(brand: "BMW", year: 1960, trunkVolume: .weight(200), engine: .on, windows: .open, fullTrunkVolume: 50)
var TrunkCar1 = TrunkCar(brand: "KAMAZ", year: 2015, trunkVolume: .weight(200), engine: .on, windows: .open, fullTrunkVolume: 1200)
var TrunkCar2 = TrunkCar(brand: "MAN", year: 2005, trunkVolume: .weight(200), engine: .off, windows: .close, fullTrunkVolume: 500)

sportCar1.brand
sportCar2.year
TrunkCar1.trunkVolume
TrunkCar2.engine

sportCar1.descriptionSportCar()
TrunkCar1.descriptionTrunkCar()



