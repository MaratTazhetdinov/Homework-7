//
//  Task2.swift
//  Homework 7
//
//  Created by Marat Tazhetdinov on 02.07.2021.
//

import Foundation
//Создать базовый класс "транспортное средство" и добавить три разных проперти: скорость, вместимость, стоимость одного км. Так же создайте метод «перевозка», который принимает кол-во пассажиров и километраж. Создайте дочерние классы самолет, корабль, вертолет, машина. Сделайте у каждого класса init, внутри которого будет вызываться init родительского класса. Переопределяет метод перевозки у каждого дочернего класса. Создайте по одному объекту каждого дочернего класса, положить их в один массив и используя цикл, вызовите для каждого объекта метод перевозки и вывести в консоль результат (как быстро сможем перевести, стоимость, количество транспортных средств, необходимых для осуществления маршрута). Используем полиморфизм.

class Vehicle{
    let speed: Double
    let capacity: Int
    let costPerKilometr: Double
    
    init(speed: Double, capacity: Int, costPerKilometr: Double) {
        self.speed = speed
        self.capacity = capacity
        self.costPerKilometr = costPerKilometr
    }
    
    func transportation(passangers: Int, distance: Double){
        
    }
}

class Plane : Vehicle{
    let typeOfVehicle: String = "Plane"
    override init(speed: Double, capacity: Int, costPerKilometr: Double) {
        super.init(speed: speed, capacity: capacity, costPerKilometr: costPerKilometr)
    }
    override func transportation(passangers: Int, distance: Double) {
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

class Ship : Vehicle{
    let typeOfVehicle: String = "Ship"
    override init(speed: Double, capacity: Int, costPerKilometr: Double) {
        super.init(speed: speed, capacity: capacity, costPerKilometr: costPerKilometr)
    }
    override func transportation(passangers: Int, distance: Double) {
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

class Helicopter : Vehicle{
    let typeOfVehicle: String = "Helicopter"
    override init(speed: Double, capacity: Int, costPerKilometr: Double) {
        super.init(speed: speed, capacity: capacity, costPerKilometr: costPerKilometr)
    }
    override func transportation(passangers: Int, distance: Double) {
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

class Car : Vehicle{
    let typeOfVehicle: String = "Car"
    override init(speed: Double, capacity: Int, costPerKilometr: Double) {
        super.init(speed: speed, capacity: capacity, costPerKilometr: costPerKilometr)
    }
    override func transportation(passangers: Int, distance: Double) {
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

