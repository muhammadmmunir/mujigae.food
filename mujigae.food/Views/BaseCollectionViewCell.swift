//
//  BaseCollectionViewCell.swift
//  mujigae.food
//
//  Created by Muhammad M. Munir on 04/07/19.
//  Copyright © 2019 Muhammad M. Munir. All rights reserved.
//

import UIKit

class BaseCollectionViewCell: UICollectionViewCell, Viewable {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {}
}
