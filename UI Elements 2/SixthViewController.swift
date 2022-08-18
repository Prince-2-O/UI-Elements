//
//  SixthViewController.swift
//  UI Elements 2
//
//  Created by Prince 2.O on 16/08/22.
//  Copyright © 2022 Prince 2.O. All rights reserved.
//

import UIKit

class SixthViewController: UIViewController {

    @IBOutlet var edgeGesture: UIScreenEdgePanGestureRecognizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func swipeGestureApplied(_ sender: UISwipeGestureRecognizer) {
        print("Swipe Gesture Called")
    }
    
    @IBAction func screenEdgeGestureApplied(_ sender: UIScreenEdgePanGestureRecognizer) {
        print("Screen Edge Gesture Called")
    }
    
    
}
