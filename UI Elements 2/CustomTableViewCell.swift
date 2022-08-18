//
//  CustomTableViewCell.swift
//  UI Elements 2
//
//  Created by Prince 2.O on 15/08/22.
//  Copyright © 2022 Prince 2.O. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!

    var movies:[String] = ["MI1","MI2","MI3","MI4","MI5","MI6"]
    var movieNames:[String] = ["Mission Impossible 1","Mission Impossible 2","Mission Impossible 3","Mission Impossible 4","Mission Impossible 5","Mission Impossible 6",]
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.delegate = self
        collectionView.dataSource = self
    }

}

// MARK: - CollectionView DataSource Methods


extension CustomTableViewCell: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "productCell", for: indexPath) as! CustomCollectionViewCell
        cell.imgView.image = UIImage(named: movies[indexPath.row])
        cell.label.text = movieNames[indexPath.row]
        return cell
    }


}


// MARK: - CollectionView Delegate Methods

extension CustomTableViewCell: UICollectionViewDelegate {

}
