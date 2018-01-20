//
//  ViewController.swift
//  Swift for keyboard
//
//  Created by 矢部立也 on 2018/01/20.
//  Copyright © 2018年 矢部立也. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet var mailTextfield: UITextField!
    
    @IBOutlet var passwordTextfield: UITextField!
    
    @IBOutlet var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mailTextfield.delegate=self
        passwordTextfield.delegate=self
   }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        mailTextfield.resignFirstResponder()
        passwordTextfield.resignFirstResponder()
    }

    @IBAction func Signin(_ sender: Any) {
        resultLabel.text=mailTextfield.text!+""+passwordTextfield.text!
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

