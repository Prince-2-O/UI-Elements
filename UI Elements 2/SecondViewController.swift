//
//  SecondViewController.swift
//  UI Elements 2
//
//  Created by Prince 2.O on 14/08/22.
//  Copyright © 2022 Prince 2.O. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var movies:[String] = ["MI1","MI2","MI3","MI4","MI5","MI6"]
    
    @IBOutlet weak var pgControl: UIPageControl!
    @IBOutlet weak var movieTxtField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieTxtField.delegate = self
        pgControl.currentPage = 0
        pgControl.numberOfPages = movies.count
        pgControl.currentPageIndicatorTintColor = .red
        pgControl.pageIndicatorTintColor = .black
    }

}

// MARK: - TextField Delegate Methods

extension SecondViewController: UITextFieldDelegate {
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print(#function)
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print(#function)
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print(#function)
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(#function)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        print(#function)
        print(reason)
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print(#function)
        return true
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print(#function)
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(#function)
        textField.endEditing(true)
        return true
    }
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        print(#function)
    }
    
    
}

// MARK: - CollectionView Delegate Methods

extension SecondViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        pgControl.currentPage = indexPath.row
    }
    
}

// MARK: - CollectionView DataSource Methods

extension SecondViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! movieNamesCell
        cell.cellImage.image = UIImage(named: movies[indexPath.row])
        cell.layer.cornerRadius = 15.0
        return cell
    }
    
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        collectionViewLayout.collectionView?.collectionViewLayout.i
//    }
    
    
}

