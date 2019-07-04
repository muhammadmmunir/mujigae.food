//
//  ViewController.swift
//  mujigae.food
//
//  Created by Muhammad M. Munir on 03/07/19.
//  Copyright © 2019 Muhammad M. Munir. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

protocol FavouriteDelegate: class {
    func didDoneButtonTapped()
    func alertInput(with text: String)
}

class FavouriteController: UIViewController {
    
    private var menus = [MenuItem]()
    private var selectedMenus = [MenuItem]()
    
    private lazy var favouriteRootContainer: FavouriteRootContainer = {
        let root = FavouriteRootContainer()
        root.doneDelegate = self
        return root
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
        
    }
    
    // MARK: - Fetching data from API
    func fetchData() {
        let mujiAPI = "http://127.0.0.1:3000/menus"
        Alamofire.request(mujiAPI).responseJSON { (responseData) -> Void in
            if((responseData.result.value) != nil) {
                let swiftyJsonVar = JSON(responseData.result.value!)
                
                guard let menuData = swiftyJsonVar.array else {
                    return
                }
                
                for menu in menuData {
                    guard let id = menu["id"].int else {
                        return
                    }
                    guard let name = menu["name"].string else {
                        return
                    }
                    let menuObj = MenuItem(id: id, name: name, selected: false)
                    self.menus.append(menuObj)
                }
            } else {
                // Use dummy data if failed to fetch data from API
                self.menus.append(MenuItem(id: 1, name: "Topokki", selected: false))
                self.menus.append(MenuItem(id: 2, name: "Sundubu", selected: false))
                self.menus.append(MenuItem(id: 3, name: "Galbitang", selected: false))
                self.menus.append(MenuItem(id: 4, name: "Korean Fried Chicken", selected: false))
                self.menus.append(MenuItem(id: 5, name: "Nori", selected: false))
            }
            self.setupViews()
        }
    }
    
    func setupViews() {
        favouriteRootContainer.collectionView.menus = menus
        favouriteRootContainer.collectionView.selectedMenus = selectedMenus
        view = favouriteRootContainer
    }

}

extension FavouriteController: FavouriteDelegate {
    
    func didDoneButtonTapped() {
        let doneController = DoneController()
        self.present(doneController, animated: true, completion: nil)
    }
    
    func alertInput(with text: String) {
        let alert = UIAlertController(title: "Warning", message: text, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
}
