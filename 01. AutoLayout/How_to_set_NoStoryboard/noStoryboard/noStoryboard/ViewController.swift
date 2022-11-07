//
//  ViewController.swift
//  noStoryboard
//
//  Created by hyeonseok on 2022/11/07.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    self.view.backgroundColor = .yellow
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
