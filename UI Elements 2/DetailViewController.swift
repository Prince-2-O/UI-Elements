//
//  DeatilViewController.swift
//  UI Elements 2
//
//  Created by Prince 2.O on 18/08/22.
//  Copyright © 2022 Prince 2.O. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var productDetails: UILabel!

    var deviceModel: Device?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = deviceModel?.title
        btn1.layer.borderWidth = 2
        btn2.layer.borderWidth = 2
        btn3.layer.borderWidth = 2
        btn4.layer.borderWidth = 2
        imgView.image = UIImage(named: deviceModel!.image![0])
        productDetails.text = deviceModel?.description
        btn1.setBackgroundImage(UIImage(named: (deviceModel?.image![1])!), for: .normal)
        btn2.setBackgroundImage(UIImage(named: (deviceModel?.image![2])!), for: .normal)
        btn3.setBackgroundImage(UIImage(named: (deviceModel?.image![3])!), for: .normal)
        btn4.setBackgroundImage(UIImage(named: (deviceModel?.image![4])!), for: .normal)
    }
    
    
    @IBAction func btn1Pressed(_ sender: UIButton) {
        imgView.image = sender.currentBackgroundImage
    }
    
    @IBAction func btn2Pressed(_ sender: UIButton) {
        imgView.image = sender.currentBackgroundImage
    }
    
    @IBAction func btn3Pressed(_ sender: UIButton) {
        imgView.image = sender.currentBackgroundImage
    }
    
    @IBAction func btn4Pressed(_ sender: UIButton) {
        imgView.image = sender.currentBackgroundImage
    }
    
    
}
