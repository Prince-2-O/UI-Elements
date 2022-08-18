//
//  ThirdViewController.swift
//  UI Elements 2
//
//  Created by Prince 2.O on 15/08/22.
//  Copyright © 2022 Prince 2.O. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    
    @IBOutlet weak var MyTableView: UITableView!
    
    var movies:[String] = ["MI1","MI2","MI3","MI4","MI5","MI6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

// MARK: - TableView DataSource Methods

extension ThirdViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = MyTableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! CustomTableViewCell
        return cell
    }
    
    
}

// MARK: - TableView Deleagte Methods

extension ThirdViewController: UITableViewDelegate {
    
}
