//
//  ViewController.swift
//  mujigae.food
//
//  Created by Muhammad M. Munir on 03/07/19.
//  Copyright © 2019 Muhammad M. Munir. All rights reserved.
//

import UIKit

class FavouriteController: UIViewController {
    
    private lazy var favouriteRootContainer: FavouriteRootContainer = {
        let root = FavouriteRootContainer()
        return root
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    func setupViews() {
        view = favouriteRootContainer
    }

}

