//
//  CharecterClass.swift
//  theGame(Homework3@ky123v)
//
//  Created by Vladislav Zheleznyak on 21.12.2022.
//

import Foundation

class Charecter: ActionProto {
    var name = "blank"
    var power: Int
    
    init (name: String, power: Int) {
        self.name = name
        self.power = power
    }
    
    func greating () {
        print("Hey....")
    }
    func move () {
        print("My power is \(power) and I Main Hero")
    }
}

class RunnerHero: Charecter {
    var speed: Int
    
    init(name: String, power: Int, speed: Int) {
        self.speed = speed * power + 10
        super.init(name: name, power: power)
    }
    
    
    override func greating () {
        super.greating()
        print("Im Runner and FAST like Mr. Dominic Toretto")
        print("\(name) is my name")
    }
    
    override func move() {
        print("My power \(power) and I have to go \(power * speed) points")
    }
}

class invisibleMan: Charecter {
    
    override func greating() {
        print("Hey......Yes Im here")
        print("....be careful Im here")
    }
    
    override func move() {
        print(".....I will stay here")
    }
}
var boss = Charecter(name: "Boss", power: 777)
var racerMan = RunnerHero(name: "Franco1", power: 11, speed: 77)
var invisMan = invisibleMan(name: "Iman", power: 7)

var dreamTean = [boss, racerMan, invisMan]

// MARK: - Початок діалогу Boss, Franco1 та invisible-Man Iman
func startAction() {
    for i in dreamTean {
        print("\(i.name)\t>>")
        i.greating()
        print("\n")
    }
    
    for ii in dreamTean {
        print("\(ii.name)\t>>")
        ii.move()
        print("\n")
    }
}

