//
//  UIlabel_Extension.swift
//  Exercise_03
//
//  Created by 白石裕幸 on 2021/08/19.
//

import UIKit

extension UILabel {
    func label(labelText: String = "",
               backGroundColor: UIColor,
               textColor: UIColor,
               fontName: String,
               fontSize: CGFloat,
               adjustsFontSize: Bool = false,
               minimumVal: CGFloat = 0.5) -> UILabel {
        text = labelText
        backgroundColor = backGroundColor
        self.textColor = textColor
        font = UIFont(name: fontName, size: fontSize)
        adjustsFontSizeToFitWidth = adjustsFontSize
        minimumScaleFactor = minimumVal
        return self
    }
}
