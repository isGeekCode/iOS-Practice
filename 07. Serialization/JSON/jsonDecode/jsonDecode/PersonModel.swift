//
//  PersonModel.swift
//  jsonDecode
//
//  Created by bang_hyeonseok on 2022/12/27.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let personModel = try? newJSONDecoder().decode(PersonModel.self, from: jsonData)

import Foundation
// 하위 계층 모두 Codable을 채택해야한다.

// MARK: - PersonModel
struct PersonModel : Codable {
    var person: [Person]
}

// MARK: - Person
struct Person : Codable {
    var name, age : String
}





// // MARK: - PersonModel
// class PersonModel {
//     var person: [Person]
//
//     init(person: [Person]) {
//         self.person = person
//     }
// }
//
// // MARK: - Person
// class Person {
//     var name, age, employed: String
//
//     init(name: String, age: String, employed: String) {
//         self.name = name
//         self.age = age
//         self.employed = employed
//     }
// }
