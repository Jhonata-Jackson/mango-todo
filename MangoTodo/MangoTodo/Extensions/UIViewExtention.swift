//
//  UIViewExtention.swift
//  MangoTodo
//
//  Created by Jhonata Jackson on 24/04/25.
//

import Foundation
import UIKit


extension UIView {

    enum BorderSide {
        case top, bottom, left, right
    }

    func addBorder(to side: BorderSide, color: UIColor, thickness: CGFloat, opacity: Float = 1.0) {
        let border = CALayer()
        border.backgroundColor = color.cgColor
        border.opacity = opacity
        
        switch side {
        case .top:
            border.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: thickness)
        case .bottom:
            border.frame = CGRect(x: 0, y: self.frame.height - thickness, width: self.frame.width, height: thickness)
        case .left:
            border.frame = CGRect(x: 0, y: 0, width: thickness, height: self.frame.height)
        case .right:
            border.frame = CGRect(x: self.frame.width - thickness, y: 0, width: thickness, height: self.frame.height)
        }

        self.layer.addSublayer(border)
    }

    func addBorders(to sides: [BorderSide], color: UIColor, thickness: CGFloat, opacity: Float = 1.0) {
        for side in sides {
            addBorder(to: side, color: color, thickness: thickness, opacity: opacity)
        }
    }
}
