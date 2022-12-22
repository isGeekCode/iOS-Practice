//
//  ViewController.swift
//  loginPage
//
//  Created by hyeonseok on 2022/12/22.
//

import UIKit

class ViewController: UIViewController {

  
  var figmaLogoView = UIImageView()
  var figmaLogoCircleView = UIView()
  var figmaLabel = UILabel()
  var topContainerView = UIView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    self.view.backgroundColor = Configs.backgroundColor
    
    self.view.addSubview(topContainerView)
    topContainerView.addSubview(figmaLabel)
    topContainerView.addSubview(figmaLogoCircleView)
    figmaLogoCircleView.addSubview(figmaLogoView)


    figmaLogoCircleView.translatesAutoresizingMaskIntoConstraints = false
    topContainerView.translatesAutoresizingMaskIntoConstraints = false
    figmaLogoView.translatesAutoresizingMaskIntoConstraints = false
    figmaLabel.translatesAutoresizingMaskIntoConstraints = false

    NSLayoutConstraint.activate([
    
      topContainerView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 50),
      topContainerView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 70),
      topContainerView.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor),
      topContainerView.heightAnchor.constraint(equalToConstant: 80),

      
      figmaLogoCircleView.leadingAnchor.constraint(equalTo: topContainerView.leadingAnchor),
      figmaLogoCircleView.topAnchor.constraint(equalTo: topContainerView.topAnchor),
      figmaLogoCircleView.bottomAnchor.constraint(equalTo: topContainerView.bottomAnchor),
      figmaLogoCircleView.widthAnchor.constraint(equalTo: topContainerView.heightAnchor),
      
      figmaLogoView.centerXAnchor.constraint(equalTo: figmaLogoCircleView.centerXAnchor),
      figmaLogoView.centerYAnchor.constraint(equalTo: figmaLogoCircleView.centerYAnchor),
      figmaLogoView.widthAnchor.constraint(equalTo: figmaLogoCircleView.widthAnchor, multiplier: 0.7),
      figmaLogoView.heightAnchor.constraint(equalTo: figmaLogoCircleView.heightAnchor, multiplier: 0.7),
      
      figmaLabel.topAnchor.constraint(equalTo: topContainerView.topAnchor),
      figmaLabel.bottomAnchor.constraint(equalTo: topContainerView.bottomAnchor),
      figmaLabel.leadingAnchor.constraint(equalTo: figmaLogoCircleView.trailingAnchor, constant: 10),
      figmaLabel.widthAnchor.constraint(equalTo: topContainerView.widthAnchor, multiplier: 0.7)

      
    ])

    figmaLogoCircleView.layer.cornerRadius = 40
    figmaLogoCircleView.backgroundColor = .white

    figmaLabel.text = "Figma"
    figmaLabel.font = UIFont.systemFont(ofSize:60)


//    figmaLogoView.backgroundColor = .white
    figmaLogoView.contentMode = .scaleAspectFit
    figmaLogoView.image = UIImage(named: "figmaLogo.png")
  }

  
  
  
  

}
