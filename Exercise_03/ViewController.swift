//
//  ViewController.swift
//  Exercise_03
//
//  Created by 白石裕幸 on 2021/08/11.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet private var leftTextField: UITextField!
    @IBOutlet private var rightTextField: UITextField!
    @IBOutlet private var leftLabel: UILabel!
    @IBOutlet private var rightLabel: UILabel!
    @IBOutlet private var resultLabel: UILabel!
    @IBOutlet private var leftSwitch: UISwitch!
    @IBOutlet private weak var rightSwitch: UISwitch!

    @IBAction private func calculationButton(_ sender: Any) {
        let leftValue = Int(leftTextField.text!) ?? 0
        let rightValue = Int(rightTextField.text!) ?? 0
        let leftSignedValue = leftSwitch.isOn ? -leftValue : leftValue
        let rightSignedValue = rightSwitch.isOn ? -rightValue : rightValue
        leftLabel.text = String(leftSignedValue)
        rightLabel.text = String(rightSignedValue)
        resultLabel.text = String(leftSignedValue + rightSignedValue)
        view.endEditing(true)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
