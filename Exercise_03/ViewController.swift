//
//  ViewController.swift
//  Exercise_03
//
//  Created by 白石裕幸 on 2021/08/11.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet var textField01: UITextField!
    @IBOutlet var textField02: UITextField!
    @IBOutlet var label01: UILabel!
    @IBOutlet var label02: UILabel!
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var switch01Obj: UISwitch!
    @IBOutlet var switch02Obj: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate()
        
        // Do any additional setup after loading the view.
    }
        @IBAction func calculationButton(_ sender: Any) {
            let text01 = Int(textField01.text!) ?? 0
            let text02 = Int(textField02.text!) ?? 0
            let val01 = switch01Obj.isOn ? -text01 : text01
            let val02 = switch02Obj.isOn ? -text02 : text02
            label01.text = String(val01)
            label02.text = String(val02)
            resultLabel.text = String(val01 + val02)
    }
    
    
    private func delegate(){
        textField01.delegate = self
        textField02.delegate = self
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.endEditing(true)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
