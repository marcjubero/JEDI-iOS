//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var me:String = "marc"

let pi = 3.14
let num = 2

let res = Int(pi) - num

res


me

me = "marc jubero"

// Arrays
let compliments:[String] = ["a", "b", "c"]

// Functions
func compliment() -> String {
    return "Hello "
}

compliment()

func compliment(name:String) -> String {
    return compliment() + name
}

compliment(me)
// fem que la funció sigui més rica a nivell de coprensió
func compliment(toPersonWithName name:String) -> String {
    return compliment() + name
}

compliment(toPersonWithName: "Marc")

func suma(a:Int,_ b:Int) -> Int {
    return a + b
}
// by def 2nd param always extern. To avoid that, use low dash ('_') to not to explicit "b:"
suma(2,3)

if 2 == 2 {
    // do something
} else {
    // do something else
}
// -> else without {} not allowed.

// loops
for c in compliments {
    print(c)
}

for i in 0..<3 {
    // do something without losing index
    print(i)
}

// clases
class Vehicle {
    var rodes:Int
    var modelMotor:String
    
    init(rodes:Int, modelMotor:String) {
        self.rodes = rodes
        self.modelMotor = modelMotor
    }
}


