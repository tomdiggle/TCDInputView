//
//  KeyboardView.swift
//  TCDInputView
//
//  Created by Tom Diggle on 21/05/2015.
//  Copyright (c) 2015 Tom Diggle. All rights reserved.
//  http://tomdiggle.com
//

import UIKit

protocol KeyboardViewDelegate {
    
    func returnButtonTapped()
    
    func backspaceButtonTapped()
    
    func characterTapped(character: String)
    
}

class KeyboardView: UIView, UIInputViewAudioFeedback {
    
    @IBOutlet weak var backspaceButton: BackspaceButton!
    var delegate: KeyboardViewDelegate?
    var enableInputClicksWhenVisible: Bool {
        return true
    }
    
    @IBAction func returnButtonTapped(button: UIButton) {
        UIDevice.currentDevice().playInputClick()
        self.delegate?.returnButtonTapped()
    }
    
    @IBAction func backspaceButtonTapped(button: UIButton) {
        UIDevice.currentDevice().playInputClick()
        self.delegate?.backspaceButtonTapped()
    }
    
    @IBAction func characterButtonTapped(button: UIButton) {
        UIDevice.currentDevice().playInputClick()
        if let character = button.currentTitle {
            self.delegate?.characterTapped(character)
        }
    }
    
    deinit {
        self.delegate = nil
    }
    
}

class BackspaceButton: UIButton {
    
    override var highlighted: Bool {
        get {
            return super.highlighted
        }
        set {
            if newValue {
                backgroundColor = UIColor.whiteColor()
            }
            else {
                backgroundColor = UIColor(red: 202/255, green: 202/255, blue: 202/255, alpha: 1)
            }
            super.highlighted = newValue
        }
    }

    
}
