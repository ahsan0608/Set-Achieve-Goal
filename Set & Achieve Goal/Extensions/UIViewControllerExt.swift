//
//  UIViewControllerExt.swift
//  Set & Achieve Goal
//
//  Created by Ahsan on 8/18/20.
//  Copyright © 2020 Ahsan.fish. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func presentDetails(_ ViewControllerToPresent: UIViewController) {
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromRight
        self.view.window?.layer.add(transition, forKey: kCATransition)
        
        present(ViewControllerToPresent, animated: false, completion: nil)
    }
    
    func dismissDetail() {
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromLeft
        self.view.window?.layer.add(transition, forKey: kCATransition)
        
        dismiss(animated: false, completion: nil)
    }
}
