//
//  MyCustomTableViewCell.swift
//  UI Elements 2
//
//  Created by Prince 2.O on 15/08/22.
//  Copyright © 2022 Prince 2.O. All rights reserved.
//

import UIKit

var products = [
MovData(Category: "Iphone", images: ["IP 13","IP 12","IP 12 Pro","IP 11"]),
MovData(Category: "Apple Watch", images: ["I Watch 7","I Watch 6","I Watch SE","I Watch 3"]),
MovData(Category: "MacBook", images: ["MacBook Air 2020","MacBook Air 2022","MacBook Pro 2020","MacBook Pro 2021","MacBook Pro 2022"]),
MovData(Category: "AirPods", images: ["AirPods 1","AirPods Pro","AirPods 3rd Gen","AirPods Max"]),
//MovData(Category: "Ipads", images: ["IPad 2021","IPad Pro 2021","IPad Air 2022","Ipad 2021"]),
]

class MyCustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.delegate = self
        collectionView.dataSource = self
    }

}

// MARK: - CollectionView DataSource and Delegate Methods

extension MyCustomTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    // Doubt How Tag Is Working
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products[collectionView.tag].images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! MyCollectionViewCell
        cell.collectionImage.image = UIImage(named: products[collectionView.tag].images[indexPath.row])
        cell.nameLabel.text = products[collectionView.tag].images[indexPath.row]
        cell.collectionImage.layer.cornerRadius = 10
        return cell
    }
    
    
}
