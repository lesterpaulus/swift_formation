//: Playground - noun: a place where people can play

import UIKit

//BLUEPRINT
class Vehicle {
    private var engine = "4 cylinder"
    private var color = "Silver"
    private var odometer = 0
    
    init(engine: String, color: String) {
        self.engine = engine
        self.color = color
    }
    
    init() {
        
    }
    
    func enterMiles(miles: Int) {
        odometer += miles
    }
}
/*
var srx = Vehicle(engine: "6 Cylinder", color: "Royal Blue")
var volvo = Vehicle()

print(srx.color)
print(volvo.color)

var silverado = Vehicle()

//creation d'une array de type Vehicle
var vehicles = [Vehicle]()
vehicles.append(volvo)
vehicles.append(silverado)
vehicles.append(srx)

print(srx.odometer)
srx.enterMiles(10400)
print(srx.odometer)
*/








