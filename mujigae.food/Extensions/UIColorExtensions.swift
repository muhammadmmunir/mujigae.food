//
//  UIColorExtensions.swift
//  mujigae.food
//
//  Created by Muhammad M. Munir on 03/07/19.
//  Copyright © 2019 Muhammad M. Munir. All rights reserved.
//

import UIKit

extension UIColor {
    
    // MARK: - Color Kit
    public class var background: UIColor {
        return UIColor(rgb: 0xFFFFFF)
    }
    
    public class var title: UIColor {
        return UIColor(rgb: 0x252525)
    }
    
    public class var description: UIColor {
        return UIColor(rgb: 0x555555)
    }
    
    public class var selectedOutline: UIColor {
        return UIColor(rgb: 0xEBA1A1)
    }
    
    public class var unselectedOutline: UIColor {
        return UIColor(rgb: 0xD9D8D8)
    }
    
    public class var selectedText: UIColor {
        return UIColor(rgb: 0xEBA1A1)
    }
    
    public class var unselectedText: UIColor {
        return UIColor(rgb: 0xAAAAAA)
    }
    
    public class var buttonText: UIColor {
        return UIColor(rgb: 0xFFFFFF)
    }
    
    public class var button: UIColor {
        return UIColor(rgb: 0xEBA1A1)
    }
    
    // MARK: - Create custom init for UIColor with hex color code (rgb)
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component.")
        assert(green >= 0 && green <= 255, "Invalid green component.")
        assert(blue >= 0 && blue <= 255, "Invalid blue component.")
        
        self.init(red: CGFloat(red)/255, green: CGFloat(green)/255, blue: CGFloat(blue)/255, alpha: 1)
    }
    
    convenience init(rgb: Int) {
        self.init(
            red: (rgb >> 16) & 0xFF,
            green: (rgb >> 8) & 0xFF,
            blue: rgb & 0xFF
        )
    }
    
    // MARK: - Create custom init for UIColor with hex color code (rgb) and alpha
    convenience init(red: Int, green: Int, blue: Int, a: CGFloat = 1.0) {
        self.init(
            red: CGFloat(red)/255,
            green: CGFloat(green)/255,
            blue: CGFloat(blue)/255,
            alpha: a
        )
    }
    
    convenience init(rgb: Int, a: CGFloat = 1.0) {
        self.init(
            red: (rgb >> 16) & 0xFF,
            green: (rgb >> 8) & 0xFF,
            blue: rgb & 0xFF,
            a: a
        )
    }
}
