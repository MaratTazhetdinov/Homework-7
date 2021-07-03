//
//  ViewController.swift
//  Homework 7
//
//  Created by Marat Tazhetdinov on 02.07.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Task1
        print("Task 1")
        
        let person1: Dancer = Dancer (firstName: "Jenny", secondName: "Colley")
        let person2: Singer = Singer (firstName: "Teo", secondName: "Durham")
        let person3: Comedian = Comedian (firstName: "Woody", secondName: "O'Connor")
        let person4: Painter = Painter (firstName: "Aden", secondName: "Padilla", pseudonym: "Picasso")
        
        let troope: [Artist] = [person1, person2, person3, person4]
        
        for obj in troope{
            print("--------------------------------")
            obj.perfomance()
        }
        print("--------------------------------")
        
        //Task2
        print("Task2")
        
        let vehicle1: Plane = Plane (speed: 800, capacity: 162, costPerKilometr: 5)
        let vehicle2: Ship = Ship (speed: 100, capacity: 300, costPerKilometr: 20)
        let vehicle3: Helicopter = Helicopter (speed: 300, capacity: 8, costPerKilometr: 210)
        let vehicle4: Car = Car (speed: 90, capacity: 5, costPerKilometr: 12)
        
        let vehicles: [Vehicle] = [vehicle1, vehicle2, vehicle3, vehicle4]
        
        for obj in vehicles{
            print("--------------------------------")
            obj.transportation(passangers: 120, distance: 4000)
        }
        print("--------------------------------")
        
        //Task2.1
        print("Task 2.1")
        let vehicle10: Plane1 = Plane1 (speed: 800, capacity: 162, costPerKilometr: 5, typeOfVehicle: "Plane")
        let vehicle20: Ship1 = Ship1 (speed: 100, capacity: 300, costPerKilometr: 20, typeOfVehicle: "Ship")
        let vehicle30: Helicopter1 = Helicopter1 (speed: 300, capacity: 8, costPerKilometr: 210, typeOfVehicle: "Helicopter")
        let vehicle40: Car1 = Car1 (speed: 90, capacity: 5, costPerKilometr: 12, typeOfVehicle: "Car")
        
        let vehicles1: [Vehicle1] = [vehicle10, vehicle20, vehicle30, vehicle40]
        
        for obj in vehicles1{
            print("--------------------------------")
            obj.transportation(passangers: 120, distance: 4000)
        }
        print("--------------------------------")
        
        //Task3
        print("Task 3")
        
        let human1: Human = Human()
        let human2: Human = Human ()
        let crocodile1: Crocodile = Crocodile()
        let crocodile2: Crocodile = Crocodile()
        let monkey1: Monkey = Monkey()
        let monkey2: Monkey = Monkey()
        let dog1: Dog = Dog()
        let dog2: Dog = Dog()
        let giraffe1: Giraffe = Giraffe ()
        let giraffe2: Giraffe = Giraffe ()
        
        print("List of objects: 2 people, 2 crocodiles, 2 monkeys, 2 dogs, 2 giraffes")
        
        var fourLegs: Int = 0
        var animals: Int = 0
        var aliveCreature: Int = 0
        
        let creatures: [Creature] = [human1, human2, crocodile1, crocodile2, monkey1, monkey2, dog1, dog2, giraffe1, giraffe2]
        
        for obj in creatures{
            guard !creatures.isEmpty else {
                print("Error! Array is empty!")
                return
            }
            
            if obj is Dog || obj is Crocodile || obj is Giraffe {
                fourLegs += 1
            }
            
            if let _ = obj as? Crocodile {
                animals += 1
            }
            
            if let _ = obj as? Monkey {
                animals += 1
            }
            
            if let _ = obj as? Dog {
                animals += 1
            }
            
            if let _ = obj as? Giraffe {
                animals += 1
            }
            if obj.isKind(of: Creature.self){
                aliveCreature += 1
            }
            
        }
        
        print("Creatures with four legs: \(fourLegs)")
        print ("Number of animals: \(animals)")
        print("Alive creatures: \(aliveCreature)")
    }


}

