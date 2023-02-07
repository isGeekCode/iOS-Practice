//
//  MVVMRXViewController.swift
//  PersonMVXApp
//
//  Created by hyeonseok on 2023/02/06.
//

import UIKit


struct Person {
  var firstName: String
  var lastName: String
}


class MVVMRXViewController: UIViewController {
  
  @IBOutlet weak var firstNameTextField: UITextField!
  @IBOutlet weak var lastNameTextField: UITextField!
  @IBOutlet weak var personNameLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setUI()

    
    // Do any additional setup after loading the view.
  }
  
  func setUI() {
    print("setUI")

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

}
