//
//  ViewController.swift
//  jsonDecode
//
//  Created by bang_hyeonseok on 2022/12/27.
//

import UIKit

class ViewController: UIViewController {

    var exampleJSON: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let encoder = JSONEncoder()
        let park = Person(name: "Park", age: "100")
        let kim = Person(name: "Kim", age: "26")

        var personModel = PersonModel(person: [])
        personModel.person.append(kim)
        personModel.person.append(park)
//        var personModel = PersonModel(person: [kim, park])

        


//        encoder.outputFormatting = .prettyPrinted
//        encoder.outputFormatting = .sortedKeys
        encoder.outputFormatting = [.sortedKeys, .prettyPrinted]

        let jsonData = try? encoder.encode(kim)
//        let jsonData = try? encoder.encode(park)
//        let jsonData = try? encoder.encode(kim)

        
        // if let을 사용한 이유
        // 1. try?로 사용하면 jsonData가 Optional로 들어온다.
        // 2. String(data: encoding: )의 리턴타입이 String? 이다.
        if let jsonData = jsonData, let jsonString = String(data: jsonData, encoding: .utf8) {
            
//            print(jsonString)
            /**
             {
               "name" : "Park",
               "age" : "100"
             }
            */
            
            self.exampleJSON = jsonString
        }
        

        print("exampleJSON: \n\(exampleJSON)")
        
        
        
        let decoder = JSONDecoder()
        let data = exampleJSON.data(using: .utf8)
        if let data = data {
            print("여기까지 가능")
            
            if let myPerson = try? decoder.decode(Person.self, from: data) {

                print("myPerson: \(myPerson)")
                let newPerson = Person(name: myPerson.name, age: myPerson.age)
                print("newPerson: \(newPerson)")

            }
        }
        
    }

    
    func serialize() {
        
    }
    
    func Deserialize() {

    }
    
    
    
    
}

