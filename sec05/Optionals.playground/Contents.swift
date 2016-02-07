//: Playground - noun: a place where people can play

import UIKit

var lotteryWinnings: Int?

//méthode 1
if(lotteryWinnings != nil){
    print(lotteryWinnings!)
}

lotteryWinnings = 10

//méthode 2
if let winnings = lotteryWinnings {
    print(winnings)
}


class Car {
    var model: String?
}

var vehicle: Car?
/*
if let v = vehicle {
    if let m = v.model {
        print(m)
    }
}
*/
print(vehicle?.model)
vehicle = Car()
vehicle?.model = "Bronco"
if let v = vehicle, let m = v.model {
    print(m)
}
//12:25

