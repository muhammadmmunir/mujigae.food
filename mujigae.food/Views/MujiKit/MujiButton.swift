//
//  MujiButton.swift
//  mujigae.food
//
//  Created by Muhammad M. Munir on 03/07/19.
//  Copyright © 2019 Muhammad M. Munir. All rights reserved.
//

import UIKit

class MujiButton: UIButton {
    
    // Set button text
    public var titleButton: String? {
        didSet{
            if let titleButton = titleButton {
                setTitle(titleButton, for: .normal)
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        tintColor = .buttonText
        backgroundColor = .button
        
        titleLabel?.textColor = .buttonText
        titleLabel?.font = UIFont(name: MujiFont.proximaNovaBold, size: 16)
        
        layer.cornerRadius = 5
        layer.masksToBounds = true
    }
    
}
