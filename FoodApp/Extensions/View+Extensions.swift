//
//  View+Extensions.swift
//  FoodApp
//
//  Created by Александр Горелкин on 02.02.2023.
//

import UIKit



extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return cornerRadius
        }
        set {
            self.layer.cornerRadius = newValue
        }
    }
}
