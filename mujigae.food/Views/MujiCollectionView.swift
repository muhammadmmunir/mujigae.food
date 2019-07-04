//
//  MujiCollectionView.swift
//  mujigae.food
//
//  Created by Muhammad M. Munir on 04/07/19.
//  Copyright © 2019 Muhammad M. Munir. All rights reserved.
//

import UIKit

class MujiCollectionView: BaseView {
    
    public var menus = [MenuItem]()
    private var selectedMenus = [MenuItem]()

    private lazy var menuCollectionView: UICollectionView = {
        let layout = LeftAlignedCollectionViewFlowLayout()
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.backgroundColor = .background
        collection.delegate = self
        collection.dataSource = self
        return collection
    }()
    
    private func populateMenu() {
        menus.append(MenuItem(name: "Topokki", selected: false))
        menus.append(MenuItem(name: "Sundubu", selected: false))
        menus.append(MenuItem(name: "Galbitang", selected: false))
        menus.append(MenuItem(name: "Beef BBQ", selected: false))
        menus.append(MenuItem(name: "Korean Fried Chicken", selected: false))
        menus.append(MenuItem(name: "Bingsoo", selected: false))
        menus.append(MenuItem(name: "Dakgalbi", selected: false))
        menus.append(MenuItem(name: "Ramyun", selected: false))
        menus.append(MenuItem(name: "Anyeong Set 1", selected: false))
        menus.append(MenuItem(name: "Nori", selected: false))
        menus.append(MenuItem(name: "Mandu", selected: false))
        menus.append(MenuItem(name: "Kimchi", selected: false))
        menus.append(MenuItem(name: "Beef", selected: false))
        menus.append(MenuItem(name: "Anyeong Set 2", selected: false))
        menus.append(MenuItem(name: "Choko Bingsoo", selected: false))
        menus.append(MenuItem(name: "Bokumpbap", selected: false))
        
        menus.append(MenuItem(name: "Topokki", selected: false))
        menus.append(MenuItem(name: "Sundubu", selected: false))
        menus.append(MenuItem(name: "Galbitang", selected: false))
        menus.append(MenuItem(name: "Beef BBQ", selected: false))
        menus.append(MenuItem(name: "Korean Fried Chicken", selected: false))
        menus.append(MenuItem(name: "Bingsoo", selected: false))
        menus.append(MenuItem(name: "Dakgalbi", selected: false))
        menus.append(MenuItem(name: "Ramyun", selected: false))
        menus.append(MenuItem(name: "Anyeong Set 1", selected: false))
        menus.append(MenuItem(name: "Nori", selected: false))
        menus.append(MenuItem(name: "Mandu", selected: false))
        menus.append(MenuItem(name: "Kimchi", selected: false))
        menus.append(MenuItem(name: "Beef", selected: false))
        menus.append(MenuItem(name: "Anyeong Set 2", selected: false))
        menus.append(MenuItem(name: "Choko Bingsoo", selected: false))
        menus.append(MenuItem(name: "Bokumpbap", selected: false))
    }
    
    private func findSelectedMenus() {
        var tempSelectedMenus = [MenuItem]()
        for menu in menus {
            if menu.selected {
                tempSelectedMenus.append(menu)
            }
        }
        selectedMenus = tempSelectedMenus
    }
    
    override func setupViews() {
        populateMenu()
        registerCustomViews()
        addSubview(menuCollectionView)
        menuCollectionView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor)
    }
    
    private func registerCustomViews() {
        menuCollectionView.register(MujiMenuCell.self, forCellWithReuseIdentifier: MujiMenuCell.reuseIdentifier)
    }

}

extension MujiCollectionView: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return menus.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MujiMenuCell.reuseIdentifier, for: indexPath) as! MujiMenuCell
        cell.mujiMenu = menus[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let label = UILabel(frame: CGRect.zero)
        label.text = menus[indexPath.item].name
        label.sizeToFit()
        return CGSize(width: label.frame.width + 20, height: 40)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        menus[indexPath.row].selected = !menus[indexPath.row].selected
        findSelectedMenus()
        menuCollectionView.reloadData()
    }
    
}

class LeftAlignedCollectionViewFlowLayout: UICollectionViewFlowLayout {
    
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        let attributes = super.layoutAttributesForElements(in: rect)
        
        var leftMargin = sectionInset.left
        var maxY: CGFloat = -1.0
        minimumInteritemSpacing = 8
        attributes?.forEach { layoutAttribute in
            if layoutAttribute.frame.origin.y >= maxY {
                leftMargin = sectionInset.left
            }
            
            layoutAttribute.frame.origin.x = leftMargin
            
            leftMargin += layoutAttribute.frame.width + minimumInteritemSpacing
            maxY = max(layoutAttribute.frame.maxY , maxY)
        }
        
        return attributes
    }
}
