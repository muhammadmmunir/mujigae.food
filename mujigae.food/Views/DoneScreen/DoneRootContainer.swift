//
//  DoneRootContainer.swift
//  mujigae.food
//
//  Created by Muhammad M. Munir on 04/07/19.
//  Copyright © 2019 Muhammad M. Munir. All rights reserved.
//

import UIKit

class DoneRootContainer: BaseView {

    weak var backDelegate: DoneDelegate?
    
    // MARK: Component View
    private let headerView: MujiHeaderView = {
        let header = MujiHeaderView()
        header.titleText = "Thank you 😍"
        header.descriptionText = "We already saved your favourite menus for the best experience App."
        return header
    }()
    
    public var backButton: MujiButton = {
        let button = MujiButton()
        button.titleButton = "Back"
        button.addTarget(self, action: #selector(backClicked), for: .touchUpInside)
        return button
    }()
    
    // MARK: - Setup All View
    override func setupViews() {
        backgroundColor = .background
        
        let componentView = [headerView, backButton]
        componentView.forEach(addSubview)
        
        headerView.anchor(top: margins.topAnchor, left: margins.leftAnchor, bottom: nil, right: margins.rightAnchor, padding: UIEdgeInsets(top: 35, left: 15, bottom: 0, right: 15))
        
        backButton.anchor(top: nil, left: margins.leftAnchor, bottom: margins.bottomAnchor, right: margins.rightAnchor, padding: UIEdgeInsets(top: 0, left: 15, bottom: 10, right: 15), size: CGSize(width: 0, height: 40))
    }
    
    // MARK: - Button Event
    @objc private func backClicked() {
        backDelegate?.didBackButtonTapped()
    }

}
