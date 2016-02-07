//: Playground - noun: a place where people can play

import UIKit

print("toto")
var monTexte = ""
func launchFunc(){
    for index in 1...200 {
        if index % 3 == 0 && index % 5 == 0 {
            print("BooYa")
            monTexte+="BooYa\n"
        }else if index % 3 == 0 {
            print("Boo")
            monTexte+="Boo\n"
        }else if index % 5 == 0 {
            print("Ya")
            monTexte+="Ya\n"
        }
    }
    print(monTexte)
}

launchFunc()

