//
//  UIButton_Extension.swift
//  Exercise_03
//
//  Created by 白石裕幸 on 2021/08/19.
//

import UIKit

extension UIButton {
    func button(backgroundColor: UIColor = .white,
                buttonTitle: String = "No Name",
                buttonTitleState: UIControl.State,
                titleCollor: UIColor,
                titleColorState: UIControl.State,
                fontSize: CGFloat) -> UIButton {
        self.backgroundColor = backgroundColor
        setTitle(buttonTitle, for: buttonTitleState)
        setTitleColor(titleCollor, for: titleColorState)
        titleLabel?.font = UIFont.systemFont(ofSize: fontSize)
        return self
    }
}
