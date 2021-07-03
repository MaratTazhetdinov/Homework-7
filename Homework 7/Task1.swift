//
//  Task1.swift
//  Homework 7
//
//  Created by Marat Tazhetdinov on 02.07.2021.
//

import Foundation
//У нас есть базовый класс "Артист" и у него есть имя и фамилия. И есть метод "Выступление". У каждого артиста должно быть свое выступление: танцор танцует, певец поет и тд. А для художника, что бы вы не пытались ставить, пусть он ставит что-то свое (пусть меняет имя на свое артистическое). Когда вызываем метод "выступление" показать в консоле имя и фамилию артиста и собственно само выступление.Полиморфизм используем для артистов. Положить их всех в массив, пройтись по нему и вызвать их метод "выступление"

class Artist{
    let firstName: String
    let secondName: String
    
    init(firstName: String, secondName: String) {
        self.firstName = firstName
        self.secondName = secondName
    }
    
    func perfomance (){
        
    }
}

class Dancer : Artist {
    override func perfomance() {
        print("Dancer")
        print ("\(firstName) \(secondName) is dancing")
    }
}

class Singer : Artist {
    override func perfomance(){
        print("Singer")
        print ("\(firstName) \(secondName) is singing")
    }
}

class Comedian : Artist {
    override func perfomance() {
        print("Comedian")
        print ("\(firstName) \(secondName) is trying to joke")
    }
}

class Painter : Artist {
    let pseudonym: String
    init(firstName: String, secondName: String, pseudonym: String) {
        self.pseudonym = pseudonym
        super.init(firstName: firstName, secondName: secondName)
    }
    override func perfomance() {
        print("Painter")
        print("\(firstName) \(secondName) has changed his real name to \(pseudonym)")
    }
}
