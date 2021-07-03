//
//  Task2.1.swift
//  Homework 7
//
//  Created by Marat Tazhetdinov on 03.07.2021.
//

import Foundation


class Vehicle1{
    let speed: Double
    let capacity: Int
    let costPerKilometr: Double
    let typeOfVehicle: String
    
    init(speed: Double, capacity: Int, costPerKilometr: Double, typeOfVehicle: String) {
        self.speed = speed
        self.capacity = capacity
        self.costPerKilometr = costPerKilometr
        self.typeOfVehicle = typeOfVehicle
    }
    
    func transportation(passangers: Int, distance: Double) {
        print("Type of vehicle: \(typeOfVehicle)")
        print("Speed: \(speed) km/h")
        print("Capacity: \(capacity) passanger(s)")
        print("Cost per kilometr: \(costPerKilometr) RUB")
        print("Number of passangers: \(passangers)")
        print("Distance: \(distance) km")
        let hours = distance / speed
        let minutes = (hours - hours.rounded()) * 100 * 0.6
        print("Travel time: \(Int(hours)) hour(s) \(Int(minutes)) minute(s)")
        let cost = costPerKilometr * distance
        print("Cost per one transportation: \(cost) RUB")
        var numberOfVehicle: Double = Double(passangers) / Double(capacity)
        if numberOfVehicle - Double(Int(numberOfVehicle)) > 0{
            numberOfVehicle += 1
        }
        print("Number of vehicles to complete transportation: \(Int(numberOfVehicle))")
    }
}

class Plane1 : Vehicle1{
  
    }


class Ship1 : Vehicle1{

}

class Helicopter1 : Vehicle1{

}

class Car1 : Vehicle1{
 
}
