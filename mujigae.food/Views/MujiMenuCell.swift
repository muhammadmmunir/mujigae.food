//
//  MujiMenuCell.swift
//  mujigae.food
//
//  Created by Muhammad M. Munir on 04/07/19.
//  Copyright © 2019 Muhammad M. Munir. All rights reserved.
//

import UIKit

class MujiMenuCell: BaseCollectionViewCell {
    
    static let reuseIdentifier = "MujiMenuCell"
    
    public var mujiMenu: MenuItem? {
        didSet {
            if let mujiMenu = mujiMenu {
                cellTitleLabel.text = mujiMenu.name
                if mujiMenu.selected {
                    cellView.layer.borderColor = UIColor.selectedOutline.cgColor
                    cellTitleLabel.textColor = .selectedText
                } else {
                    cellView.layer.borderColor = UIColor.unselectedOutline.cgColor
                    cellTitleLabel.textColor = .unselectedText
                }
            }
        }
    }
    
    private let cellView: UIView = {
        let cell = UIView()
        cell.backgroundColor = .background
        cell.layer.cornerRadius = 20
        cell.layer.masksToBounds = true
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.unselectedOutline.cgColor
        return cell
    }()
    
    private let cellTitleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.init(name: MujiFont.proximaNovaRegular, size: 13)
        label.text = "Best Deal"
        label.textColor = .unselectedText
        label.textAlignment = .center
        return label
    }()
    
    override func setupViews() {
        addSubview(cellView)
        cellView.addSubview(cellTitleLabel)
        
        cellView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor)
        cellTitleLabel.anchorWithCenter(top: cellView.topAnchor, left: cellView.leftAnchor, bottom: cellView.bottomAnchor, right: cellView.rightAnchor, padding: .zero, vertical: cellView.centerYAnchor, horizontal: cellView.centerXAnchor)
        
    }
    
}
