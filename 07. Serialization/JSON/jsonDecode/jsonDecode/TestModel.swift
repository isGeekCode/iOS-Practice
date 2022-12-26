//
//  TestModel.swift
//  jsonDecode
//
//  Created by bang_hyeonseok on 2022/12/27.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let testModel = try? newJSONDecoder().decode(TestModel.self, from: jsonData)

import Foundation
// 하위 계층 모두 Codable을 채택해야한다.

// MARK: - TestModel
struct TestModel : Codable {
    var person: [Person]
}

// MARK: - Person
struct Person : Codable {
    var name, age : String
}
