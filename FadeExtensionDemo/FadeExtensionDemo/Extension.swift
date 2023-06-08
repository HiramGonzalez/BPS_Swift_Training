//
//  Extension.swift
//  FadeExtensionDemo
//
//  Created by BPS.Dev01 on 6/8/23.
//  Copyright © 2023 Gabrielle Miller-Messner. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func fadeOut(duration: TimeInterval, delay: TimeInterval, completion: ((_ finished: Bool) -> Void)?){
        UIView.animate(withDuration: duration, delay: delay, options: UIViewAnimationOptions.curveEaseIn, animations: {
            self.alpha = 0.0
            }, completion: completion)
    }
    
    func fadeIn(duration: TimeInterval, delay: TimeInterval, completion: ((_ finished: Bool) -> Void)?) {
        UIView.animate(withDuration: duration, delay:delay, options:UIViewAnimationOptions.curveEaseIn, animations: {
            self.alpha = 1.0
            }, completion: completion)
    }
}
