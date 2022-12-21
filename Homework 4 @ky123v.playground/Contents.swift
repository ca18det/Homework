import UIKit

var greeting = "Hello, playground"
//Mark : Task #1
enum Mercedes: String {
    case aClass = "1.2"
    case bClass = "1.3"
    case cClass
    case eClass
    case sClass
}
var merc01 = Mercedes.bClass
var merc02 = Mercedes.cClass
merc01.rawValue
merc02.rawValue

enum partOfDay {
    case morning
    case midday
    case afternoon
    case midnght
    
    func isIstimeRange() -> String{
        switch self {
        case .morning:
            print("\(Self.morning):\t06:00...11.00")
            return "\(Self.morning):\t06:00...11.00"
        case .midday:
            print("\(Self.midday):\t12:00...18.00")
            return "\(Self.midday):\t12:00...18.00"
        case .afternoon:
            print("\(Self.afternoon):\t18:00...00.00")
            return "\(Self.afternoon):\t18:00...00.00"
        case .midnght:
            print("\(Self.midnght):\t00:00...06.00")
            return "\(Self.midnght):\t00:00...06.00"
        }
    }
}
var morning = partOfDay.morning
var launch = partOfDay.midday
morning.isIstimeRange()
launch.isIstimeRange()

enum Currency {
    case usd(Int)
    case euro(Int)
    case A95(Double)
}

func isEnough(in cellar: Currency) {
    switch cellar {
    case .usd(let usdAmaount) :
        switch usdAmaount {
        case 0...100:
            print("\(usdAmaount)$ is good")
        case 100...500:
            print("\(usdAmaount)$ is ok")
        case 500...1000 :
            print("\(usdAmaount)$ is oOk OK")
        case 1000... :
            print("\(usdAmaount)$ is perfect")
        default: "next"
        }
        
    case .euro(let euroAmaount):
        euroAmaount >= 500 ? print("\(euroAmaount)euro is perfect") : print("\(euroAmaount)euro is ok")
        
    case .A95(let a95amnt) :
        a95amnt > 100 ? print("\(a95amnt)l Who are U?!") : print("\(a95amnt)l is ok")
    }
}
var usd = Currency.usd(850)
var euro = Currency.euro(650)
var petrol = Currency.A95(65)
isEnough(in: usd)
isEnough(in: euro)
isEnough(in: petrol)

//Mark : Task #2
enum VechicleType {
    case elecric
    case nonElecric
}

protocol Vechicle {
    var weight: Float       {get}
    var speed: Float        {get}
    var type: VechicleType  {get}
    var canFly: Bool        {get}
    
    func prepare()
}

extension Vechicle {
    //var type: VechicleType {.nonElecric}
    var canFly: Bool {false}
    
    func prepare() {
        switch self.type {
        case .elecric:      print("Charge")
        case .nonElecric:   print("ReFuel")
        }
    }
}

protocol FlyableVechicla {
    func getMaxHight() -> Float
}

extension Vechicle where Self: FlyableVechicla {
    //var type: VechicleType {.nonElecric}
    
    var canFly: Bool {true}
    
    func getMaxHight() -> Float {
        switch self.type {
        case .elecric: return weight + speed
        case .nonElecric: return weight * speed
        }
    }
}

struct Car: Vechicle {
    var weight: Float
    var speed: Float
    var type: VechicleType
}

struct ElecricCar: Vechicle {
    var weight: Float
    var speed: Float
    var type: VechicleType
}

struct AirPlain: Vechicle, FlyableVechicla {
    var type: VechicleType
    var weight: Float
    var speed: Float
}

struct ElectricAirplane: Vechicle, FlyableVechicla {
    var type: VechicleType
    var weight: Float
    var speed: Float
}

var car01 = Car(weight: 1200, speed: 150, type: .nonElecric)
var eCar01 = ElecricCar(weight: 1600, speed: 170, type: .elecric)
var aPlain = AirPlain(type: .nonElecric, weight: 1200, speed: 180)
var eAirPlain = ElectricAirplane(type: .elecric, weight: 1200, speed: 180)

car01.canFly
eCar01.canFly
aPlain.canFly
aPlain.getMaxHight()
eAirPlain.getMaxHight()

