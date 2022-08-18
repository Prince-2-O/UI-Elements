//
//  ViewController.swift
//  UI Elements 2
//
//  Created by Prince 2.O on 14/08/22.
//  Copyright © 2022 Prince 2.O. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    
    @IBOutlet weak var gestureLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    @IBAction func panGestureApplied(_ sender: UIPanGestureRecognizer) {
        if sender.state == .began || sender.state == .changed {
            gestureLabel.text = "Pan Gesture"
        }
    }
    
    
    @IBAction func tapGestureApplied(_ sender: UITapGestureRecognizer) {
        if sender.state == .ended {
            gestureLabel.text = "Tap Gesture"
            gestureLabel.textColor = .red
        }
    }
    
    
    @IBAction func pinchGestureApplied(_ sender: UIPinchGestureRecognizer) {
        if sender.state == .began || sender.state == .changed {
            gestureLabel.text = "Pinch Gesture"
            gestureLabel.textColor = .yellow
        }
    }
    
    
    @IBAction func rotationGestureApplied(_ sender: UIRotationGestureRecognizer) {
        if sender.state == .began || sender.state == .changed {
            gestureLabel.text = "Rotation Gesture"
            gestureLabel.textColor = .green
        }
    }
    
    
    @IBAction func swipeGestureApplied(_ sender: UISwipeGestureRecognizer) {
            print("Swipe Up Gesture Applied")
            gestureLabel.text = "Swipe Gesture"
            gestureLabel.textColor = .blue
    }
    
    
    @IBAction func longPressGestureApplied(_ sender: UILongPressGestureRecognizer) {
        if sender.state == .ended {
            gestureLabel.text = "Long Press Gesture"
            gestureLabel.textColor = .brown
        }
    }
    
    @IBAction func screenEdgeGestureApplied(_ sender: UIScreenEdgePanGestureRecognizer) {
        if sender.state == .began || sender.state == .changed {
            gestureLabel.text = "Screen Edge Gesture"
            gestureLabel.textColor = .purple
        }
    }
    
}

