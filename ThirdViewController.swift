//
//  ThirdViewController.swift
//  UI Elements 2
//
//  Created by Prince 2.O on 15/08/22.
//  Copyright © 2022 Prince 2.O. All rights reserved.
//

import UIKit


class ThirdViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

// MARK: - TableView Delegate and DataSource Methods

extension ThirdViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! MyCustomTableViewCell
       // Doubt How Tag Is Working
        cell.collectionView.tag = indexPath.section
        print("TAG ID IS \(indexPath.section)")
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return products[section].Category
    }
    
}
