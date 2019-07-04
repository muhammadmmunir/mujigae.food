//
//  BaseView.swift
//  mujigae.food
//
//  Created by Muhammad M. Munir on 03/07/19.
//  Copyright © 2019 Muhammad M. Munir. All rights reserved.
//

import UIKit

protocol Viewable {
    func setupViews()
}

class BaseView: UIView, Viewable {

    var margins: UILayoutGuide {
        return safeAreaLayoutGuide
    }
    
    var screenWidth: CGFloat {
        return UIScreen.main.bounds.size.width
    }
    
    var screenHeight: CGFloat {
        return UIScreen.main.bounds.size.height
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {}
}
