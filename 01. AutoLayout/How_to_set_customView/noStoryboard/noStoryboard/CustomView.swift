//
//  CustomView.swift
//  noStoryboard
//
//  Created by hyeonseok on 2022/11/15.
//

import Foundation
import UIKit

// 해당 어노테이션을 달아두면 스토리보드상에서 아래 inspectable달아둔 요소들을 수정할때 바로바로 스토리보드에서 확인가능
@IBDesignable
class CustomView: UIView {
  
  // 해당 어노테이션을 달아두면 스토리보드의 패널에서 GUI상에서 조작할수가 있다. 사실 이프로젝트는 노스토리보드라 필요없다.
  // 그러면 GUI에서 값을 넣어둠으로 바로 줄 수 있다.
  @IBInspectable
  var cornerRadius: CGFloat = 0 {
    didSet {
      // 값이 설정이 됐을때 알수 있는 부분
      self.layer.cornerRadius = cornerRadius
      
    }
  }
  
  @IBInspectable
  var borderWidth: CGFloat = 0 {
    didSet {
      // 값이 설정이 됐을때 알수 있는 부분
      self.layer.borderWidth = borderWidth
      
    }
  }
  
  @IBInspectable
  var borderColor: UIColor = UIColor.clear {
    didSet {
      // 값이 설정이 됐을때 알수 있는 부분
      self.layer.borderColor = borderColor.cgColor
      
    }
  }
  // MARK:  - 정사각형체크 방법1.
  
  // isCircle이 true일 경우, conerRadius에 frame 가로길이의 반을 넣어주는 로직
  //  @IBInspectable
  //  var isCircle: Bool = false {
  //    didSet {
  //
  //      if self.frame.width == self.frame.height
  //      && isCircle {
  //        self.layer.cornerRadius = self.frame.width / 2
  //      }
  //    }
  //
  //  }
  
  
  
  // MARK: - 정사각형 체크방법2
  // -> isCircle과 isSquare를 모두 체크하는 로직
  
//  @IBInspectable
//  var isCircle: Bool = false {
//    didSet {
//
//      if self.frame.width == self.frame.height
//          && isCircle {
//        self.layer.cornerRadius = self.frame.width / 2
//      }
//    }
//  }

  /// 뷰 정사각형 여부
  /// - Returns: 여부
//  fileprivate func isSquare() -> Bool {
//      return self.frame.width == self.frame.height
//  }
  
  fileprivate var isSquare: Bool {
    get {
        return self.frame.width == self.frame.height
    }
  }
}
