//
//  ViewController.swift
//  noStoryboard
//
//  Created by hyeonseok on 2022/11/07.
//

import UIKit

class ViewController: UIViewController {

  let someView = CustomView() // CustomView로 생성

  override func viewDidLoad() {
    super.viewDidLoad()
    
    setLayout()
    setConstraint()
    setStyle()
  }
  
  // MARK: - setLayout
  func setLayout() {
    self.view.addSubview(someView)
  }


  // MARK: - setConstraint
  func setConstraint() {
    
    //시스템은 뷰의 프레임과 자동 크기 조정 마스크를 기반으로 한세트의 제약조건을 자동으로 생성한다
    someView.translatesAutoresizingMaskIntoConstraints = false

    NSLayoutConstraint.activate([
      someView.widthAnchor.constraint(equalToConstant:200),
      someView.heightAnchor.constraint(equalToConstant:130),
      someView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
      someView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 100)
    ])
  }

  // MARK: - setStyle
  func setStyle() {
    self.view.backgroundColor = .white
    someView.backgroundColor = .systemYellow
//    someView.layer.cornerRadius = 20 // UIView일때 접근방법
//    someView.cornerRadius = 10 // CustomView에서 바로 접근 가능
  }

}


  

#if DEBUG
// step1. opt + cmd + enter: preview패널 열기
// step2. resume 클릭
// setp3. opt + p: preview 돌리기

import SwiftUI

struct ViewControllerPresentable: UIViewControllerRepresentable {
  func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
  }
  
  func makeUIViewController(context: Context) -> some UIViewController {
    ViewController()
  }
}

struct ViewControllerPrepresentable_PreviewProvider: PreviewProvider {
  static var previews: some View {
    ViewControllerPresentable()
    //safeArea까지만 색상이 들어간 경우
      .ignoresSafeArea()
    //attribute inspector에서 이것저것 수정하면 코드 자동생성됨

  }
}

#endif
