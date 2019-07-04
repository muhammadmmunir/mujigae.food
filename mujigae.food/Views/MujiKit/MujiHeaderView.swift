//
//  MujiHeaderView.swift
//  mujigae.food
//
//  Created by Muhammad M. Munir on 04/07/19.
//  Copyright © 2019 Muhammad M. Munir. All rights reserved.
//

import UIKit

class MujiHeaderView: BaseView {

    public var titleText: String? {
        didSet {
            if let titleText = titleText {
                titleLabel.text = titleText
            }
        }
    }
    
    public var descriptionText: String? {
        didSet {
            if let descriptionText = descriptionText {
                descriptionLabel.text = descriptionText
            }
        }
    }
    
    // MARK: - View Component
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.init(name: MujiFont.proximaNovaBold, size: 21)
        label.textColor = .title
        label.text = "Default Title"
        label.numberOfLines = 0
        return label
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.init(name: MujiFont.proximaNovaRegular, size: 13)
        label.textColor = .description
        label.text = "This is a deafult title description"
        label.numberOfLines = 0
        return label
    }()
    
    override func setupViews() {
        
        let headerComponent = [titleLabel, descriptionLabel]
        headerComponent.forEach(addSubview)
        
        titleLabel.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: rightAnchor)
        descriptionLabel.anchor(top: titleLabel.bottomAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, padding: UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0))
    }

}
