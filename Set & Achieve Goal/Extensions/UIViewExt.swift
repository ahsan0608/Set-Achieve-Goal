//
//  UIViewExt.swift
//  Set & Achieve Goal
//
//  Created by Ahsan on 8/18/20.
//  Copyright © 2020 Ahsan.fish. All rights reserved.
//

import UIKit

extension UIView {
    func bindKeyboard() {
        NotificationCenter.default.addObserver(self, selector: #selector(KeyboardWillChange), name: UIResponder.keyboardWillChangeFrameNotification, object: nil)
    }
    
    @objc func KeyboardWillChange(_ notification: NSNotification) {
        let duration = notification.userInfo![UIResponder.keyboardAnimationDurationUserInfoKey] as! Double
        let curve = notification.userInfo![UIResponder.keyboardAnimationCurveUserInfoKey] as! UInt
        let startingFrame = (notification.userInfo![UIResponder.keyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
        let endingTime = (notification.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
        
        let delayY = endingTime.origin.y - startingFrame.origin.y
        
        UIView.animateKeyframes(withDuration: duration, delay: 0.0, options: UIView.KeyframeAnimationOptions.init(rawValue: curve), animations: {
            self.frame.origin.y += delayY
        }, completion: nil)
    }
}
