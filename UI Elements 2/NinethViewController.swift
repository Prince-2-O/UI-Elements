//
//  NinethViewController.swift
//  UI Elements 2
//
//  Created by Prince 2.O on 17/08/22.
//  Copyright © 2022 Prince 2.O. All rights reserved.
//

import UIKit

class NinethViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}


// MARK: - TableView DataSource Methods

extension NinethViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrAppleProducts.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrAppleProducts[section].devices!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tblCell") as! MyTableViewCell
        let device = arrAppleProducts[indexPath.section].devices![indexPath.row]
        cell.imgView.image = UIImage(named: device.image![0])
        cell.lbl.text = device.title
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return arrAppleProducts[section].category
    }
    
    
    
    //    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
    //        return tableFooter[section]
    //    }
    //
    
    
    //    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
    //        return tableTitles
    //    }
    //
    
    //    func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int {
    //        return 0
    //    }
    
    
    func tableView(_ tableView: UITableView,canMoveRowAt indexPath: IndexPath) -> Bool {
        print(#function)
        return true
    }
    
    func tableView(_ tableView: UITableView,canEditRowAt indexPath: IndexPath) -> Bool {
        print(#function)
        return true
    }
    
    //    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
    //        if editingStyle == UITableViewCell.EditingStyle.delete {
    //            appleProducts[indexPath.section].images[indexPath.row].remove(at: indexPath)
    //            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.bottom)
    //            print("Deletion Button Pressed")
    //        }
    //        if editingStyle == UITableViewCell.EditingStyle.insert {
    //            print("Insertion Button Pressed")
    //        }
    //    }
    
    
}


// MARK: - TableView Delegate Methods

extension NinethViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(" Section \(indexPath.section) Index \(indexPath.row) is Selected")
        
        // Passing Data to DetailViewController With StoryBoardID
        let data = arrAppleProducts[indexPath.section].devices![indexPath.row]
        print(data)
        let detailVC = storyboard?.instantiateViewController(withIdentifier: "detailVC") as! DetailViewController
        detailVC.deviceModel = data
        navigationController?.pushViewController(detailVC, animated: true)
        
        //self.performSegue(withIdentifier: "detailVC", sender: data)
        
    }
    
    // MARK: - Sending Data To Another Screen With Segue Way 2 :)
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//        if segue.identifier == "detailVC" {
//            let detailVC = segue.destination as! DetailViewController
//            detailVC.deviceModel = sender as? Device
//
//        }
//
//    }
    
}

