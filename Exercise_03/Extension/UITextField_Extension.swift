//
//  UITextField_Extension.swift
//  Exercise_03
//
//  Created by 白石裕幸 on 2021/08/19.
//

import UIKit

extension UITextField {
    func textField(placeholderText: String = "",
                   backgroundColor: UIColor,
                   textColor: UIColor,
                   borderStyle: UITextField.BorderStyle = .roundedRect,
                   keyboardType: UIKeyboardType = .default,
                   fontName: String,
                   fontSize: CGFloat) -> UITextField {
        self.borderStyle = borderStyle
        self.backgroundColor = backgroundColor
        self.textColor = textColor
        font = UIFont(name: fontName, size: fontSize)
        placeholder = placeholderText
        self.keyboardType = keyboardType
        return self
    }
}
