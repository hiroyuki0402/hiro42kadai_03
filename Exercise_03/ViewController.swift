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
        let leftText = Int(leftTextField.text!) ?? 0
        let rightText = Int(rightTextField.text!) ?? 0
        let leftvalue = leftSwitch.isOn ? -leftText : leftText
        let rightvalue = rightSwitch.isOn ? -rightText : rightText
        leftLabel.text = String(leftvalue)
        rightLabel.text = String(rightvalue)
        resultLabel.text = String(leftvalue + rightvalue)
        view.endEditing(true)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
