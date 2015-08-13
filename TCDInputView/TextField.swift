//
//  TextField.swift
//  TCDInputView
//
//  Created by Tom Diggle on 21/05/2015.
//  Copyright (c) 2015 Tom Diggle. All rights reserved.
//  http://tomdiggle.com
//

import UIKit

class TextField: UITextField, KeyboardViewDelegate {
    
    var keyboardView: KeyboardView?
    
    override var inputView: UIView? {
        get {
            if (self.keyboardView != nil) {
                return self.keyboardView
            }
            
            let nibContents = NSBundle.mainBundle().loadNibNamed("KeyboardView", owner: self, options: nil) as Array
            self.keyboardView = nibContents.first as? KeyboardView
            self.keyboardView?.delegate = self
            
            return self.keyboardView
        }
        set { }
    }
    
    // MARK: KeyboardViewDelegate
    
    func returnButtonTapped() {
        self.delegate?.textFieldShouldReturn?(self)
    }
    
    func backspaceButtonTapped() {
        if self.text!.characters.count > 0 {
            self.text = String(self.text!.characters.dropLast())
        }
    }
    
    func characterTapped(character: String) {
        var appendCharacter = true
        
        if true == delegate?.respondsToSelector(Selector("textField:shouldChangeCharactersInRange:replacementString:")) {
            appendCharacter = delegate!.textField!(self, shouldChangeCharactersInRange: NSMakeRange(self.text!.characters.count, 1), replacementString: character)
        }
        
        if appendCharacter {
            self.text! += character
        }
    }
    
}
