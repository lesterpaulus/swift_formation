//: Playground - noun: a place where people can play

import UIKit

var webster: [String : String] = ["Krill":"any of the small crustaceans", "fire":"a burning mass of material"]

var anotherDictionary: [Int : String] = [44:"My fav Number", 32:"Man I hate this number!"]

print(webster["Krill"])
if let Krill = webster["Krill"] {
    print(Krill)
}

webster = [:]
if webster.isEmpty {
    print("Our dictionary is empty!")
}

var highScore: [String: Int] = ["spentak": 401, "playa21": 200, "spongeBob": 500]
highScore["jojo"] = 25

for (user, score) in highScore {
    print("\(user): \(score)")
}



