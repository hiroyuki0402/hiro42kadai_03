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
    
    private var num01 = Int()
    private var num02 = Int()
    
    @IBOutlet var resultLabel: UILabel!
    
    @IBOutlet var switch01Obj: UISwitch!
    @IBOutlet var switch02Obj: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate()
        
        // Do any additional setup after loading the view.
    }
    
    
    
    //MARK:METHODs
    ///スイッチ01
    ///return - 1 = + , 0 = -
    @IBAction func switch01(_ sender: UISwitch) {
        
        if sender.isOn{
            num01 = 1
        }else{
            num01 = 0
        }
    }
    ///スイッチ02
    ///return - 1 = + , 0 = -
    @IBAction func swith02(_ sender: UISwitch) {
        if sender.isOn{
            num02 = 1
        }else{
            num02 = 0
        }
    }
    @IBAction func calculationButton(_ sender: Any) {
        
        switch num01{
        case 0:
            
            if let _ = textField01 {
                label01.text = textField01.text
            }else{
                label01.text = ""
            }
            
        case 1:
            
            if let _ = textField01 {
                label01.text = "-" + textField01.text!
            }else{
                label01.text = ""
            }

        default:
            break
        }
        
        
        switch num02{
        
        case 0:
            
            if let _ = textField02 {
                label02.text = textField02.text
            }else{
                label02.text = ""
            }
            
        case 1:
            
            if let _ = textField02 {
                label02.text = "-" + textField02.text!
            }else{
                label02.text = ""
            }

            
        default:
            break
        }
        
        let val01 = Int(label01.text!) ?? 0
        let val02 = Int(label02.text!) ?? 0
        
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

