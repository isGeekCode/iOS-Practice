//
//  ViewController.swift
//  PersonMVXApp
//
//  Created by hyeonseok on 2023/02/04.
//

import UIKit


/*
 이 코드는 MVC 구조로 작성되었으며, Person 모델은 firstName과 lastName을 가지고 있다. PersonViewController는 UITextField에 입력한 값에 따라 personNameLabel이 바뀌도록 구현되었습니다. UITextField의 delegate를 사용하여 텍스트 필드의 편집이 끝날 때마다 updatePersonName 메서드가 호출되도록 구현.
 */
//class Person {
//  var firstName: String
//  var lastName: String
//  
//  init(firstName: String, lastName: String) {
//    self.firstName = firstName
//    self.lastName = lastName
//  }
//}

class MVCViewController: UIViewController {
  
  @IBOutlet weak var firstNameTextField: UITextField!
  @IBOutlet weak var lastNameTextField: UITextField!
  @IBOutlet weak var personNameLabel: UILabel!
  
  // MARK: - Model
  var person = Person(firstName: "", lastName: "")
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    firstNameTextField.delegate = self
    lastNameTextField.delegate = self
    setUI()
  }
  
  func updatePersonName() {
    person.firstName = firstNameTextField.text ?? ""
    person.lastName = lastNameTextField.text ?? ""
    personNameLabel.text = "\(person.firstName) \(person.lastName)"
  }
  
  func setUI() {
    view.backgroundColor = .white
    
    [firstNameTextField, lastNameTextField].forEach {
      $0.backgroundColor = .white
      $0.borderStyle = .line
      $0.layer.borderWidth = 0.5
      $0.layer.borderColor = UIColor.darkGray.cgColor
      $0.layer.cornerRadius = 5
      $0.textColor = .black
    }
    personNameLabel.backgroundColor = .systemYellow
    personNameLabel.textColor = .black
  }
  
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    self.view.endEditing(true)
  }
}

extension MVCViewController: UITextFieldDelegate {
  
  func textFieldDidEndEditing(_ textField: UITextField) {
    updatePersonName()
  }
  
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    textField.resignFirstResponder() // TextField 비활성화
    return true
  }
}
