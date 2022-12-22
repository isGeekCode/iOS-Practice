//
//  UIColor+.swift
//  loginPage
//
//  Created by hyeonseok on 2022/12/22.
//

import UIKit

extension UIColor {
    /// Hex값으로 컬러 생성하기
    /// alpha값이 있는경우, alpha값 파라미터를 사용할 것
    /// - Parameters:
    ///   - hex: 16진수
    ///   - alpha: 투명도, (optional)
    convenience init(hex: Int, alpha: CGFloat = 1.0) {
        let components = (
            red: CGFloat((hex >> 16) & 0xff) / 255,
            green: CGFloat((hex >> 08) & 0xff) / 255,
            blue: CGFloat((hex >> 00) & 0xff) / 255
        )
        self.init(red: components.red, green: components.green, blue: components.blue, alpha: alpha)
    }
}
