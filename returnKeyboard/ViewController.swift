//
//  ViewController.swift
//  returnKeyboard
//
//  Created by Apple Hsiao on 2016/11/7.
//  Copyright © 2016年 zeroplus. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var aTextField: UITextField!
    @IBOutlet weak var bTextField: UITextField!
    @IBOutlet weak var combineLabel: UILabel!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //textField.resignFirstResponder() 兩種寫法皆可
        self.view.endEditing(true)
        return true
    }
    
    @IBAction func combineButton(_ sender: UIButton) {
        if let textA = aTextField.text, let textB = bTextField.text{
           combineLabel.text = textA + textB
        }
        self.view.endEditing(true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

