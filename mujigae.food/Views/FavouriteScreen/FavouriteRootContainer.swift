//
//  FavouriteRootContainer.swift
//  mujigae.food
//
//  Created by Muhammad M. Munir on 03/07/19.
//  Copyright © 2019 Muhammad M. Munir. All rights reserved.
//

import UIKit

class FavouriteRootContainer: BaseView {
    
    // MARK: Component View
    private let headerView: MujiHeaderView = {
        let header = MujiHeaderView()
        header.titleText = "Personalize your Favourite Menu at Mujigae"
        header.descriptionText = "Pick 3 or more category of menu you are currently looking (you can change them anytime)"
        return header
    }()
    
    lazy var collectionView: MujiCollectionView = {
        let collection = MujiCollectionView()
        return collection
    }()
    
    private let doneButton: MujiButton = {
        let button = MujiButton()
        button.titleButton = "Done"
        return button
    }()

    override func setupViews() {
        backgroundColor = .background
        
        let componentView = [headerView, collectionView, doneButton]
        componentView.forEach(addSubview)
        
        headerView.anchor(top: margins.topAnchor, left: margins.leftAnchor, bottom: nil, right: margins.rightAnchor, padding: UIEdgeInsets(top: 35, left: 15, bottom: 0, right: 15))
        
        doneButton.anchor(top: nil, left: margins.leftAnchor, bottom: margins.bottomAnchor, right: margins.rightAnchor, padding: UIEdgeInsets(top: 0, left: 15, bottom: 10, right: 15), size: CGSize(width: 0, height: 40))
        
        collectionView.anchor(top: headerView.bottomAnchor, left: margins.leftAnchor, bottom: doneButton.topAnchor, right: margins.rightAnchor, padding: UIEdgeInsets(top: 24, left: 15, bottom: 30, right: 15))
        
    }

}
