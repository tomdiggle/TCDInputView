//
//  ViewController.swift
//  TCDInputView
//
//  Created by Tom Diggle on 21/05/2015.
//  Copyright (c) 2015 Tom Diggle. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var textField: KeyboardView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.becomeFirstResponder()
    }

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}

