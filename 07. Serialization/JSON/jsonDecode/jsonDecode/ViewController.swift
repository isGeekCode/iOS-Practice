//
//  ViewController.swift
//  jsonDecode
//
//  Created by bang_hyeonseok on 2022/12/27.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let encoder = JSONEncoder()
        let park = Person(name: "Park", age: "100")
        let jsonData = try? encoder.encode(park)
        
        // if let을 사용한 이유
        // 1. try?로 사용하면 jsonData가 Optional로 들어온다.
        // 2. String(data: encoding: )의 리턴타입이 String? 이다.
        if let jsonData = jsonData, let jsonString = String(data: jsonData, encoding: .utf8) {
            print("jsonString: \(jsonString)")
        }
        
//        let decoder = JSONDecoder()
//        var data = jsonString.data(using: utf8)

        
        
    }

    
    func serialize() {
        
    }
    
    func Deserialize() {

    }
}

