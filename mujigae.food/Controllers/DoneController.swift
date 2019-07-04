//
//  DoneController.swift
//  mujigae.food
//
//  Created by Muhammad M. Munir on 04/07/19.
//  Copyright © 2019 Muhammad M. Munir. All rights reserved.
//

import UIKit

protocol DoneDelegate: class {
    func didBackButtonTapped()
}

class DoneController: UIViewController {

    private lazy var doneRootContainer: DoneRootContainer = {
        let root = DoneRootContainer()
        root.backDelegate = self
        return root
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    func setupViews() {
        view = doneRootContainer
    }
}

extension DoneController: DoneDelegate {
    
    func didBackButtonTapped() {
        let favController = FavouriteController()
        self.present(favController, animated: true, completion: nil)
    }
    
}
