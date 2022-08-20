//
//  DeatilViewController.swift
//  UI Elements 2
//
//  Created by Prince 2.O on 18/08/22.
//  Copyright © 2022 Prince 2.O. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var productDetails: UILabel!
    @IBOutlet weak var clvLargeImageGallery: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var clvSmallImageGallery: UICollectionView!
    
    var deviceModel: Device?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pageControl.currentPage = 0
        pageControl.numberOfPages = (deviceModel?.image!.count)!
        title = deviceModel?.title
    }
    
    
}


// MARK: - CollectionView DataSource and Delegate Methods

extension DetailViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case collectionView:
            return (deviceModel?.image!.count)!
        case clvSmallImageGallery:
            return (deviceModel?.image!.count)!
        default:
            return 0
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView {
        case clvLargeImageGallery:
            let cell = clvLargeImageGallery.dequeueReusableCell(withReuseIdentifier: "largeImgGalleryCollectionCell", for: indexPath) as! DetailCollectionViewCell
            cell.imgView.image = UIImage(named: (deviceModel?.image![indexPath.row])!)
            return cell
        case clvSmallImageGallery:
            let imageGalleryCollectionCell = clvSmallImageGallery.dequeueReusableCell(withReuseIdentifier: "smallImgGalleryCollectionCell", for: indexPath) as! imgGalleryCollectionViewCell
            imageGalleryCollectionCell.imageGalleryImage.image = UIImage(named: (deviceModel?.image![indexPath.row])!)
            imageGalleryCollectionCell.layer.borderWidth = 2
            imageGalleryCollectionCell.layer.borderColor = UIColor.black.cgColor
            return imageGalleryCollectionCell
        default:
            return UICollectionViewCell()
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        switch collectionView {
        case clvSmallImageGallery:
            clvLargeImageGallery.scrollToItem(at: indexPath, at: .right, animated: true)
        default:
            print("None")
        }
    }
    
}


// MARK: - ScrollView DidScroll Methods

extension DetailViewController: UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print(#function)
        print(scrollView.contentOffset.x)
        print(scrollView.contentSize.width)
        if scrollView.contentOffset.x > 0.0 && scrollView.contentOffset.x <= 314.0 {
            print("Cell is 1 and ScrollPoint is \(scrollView.contentOffset.x)")
            pageControl.currentPage = 0
        }
        if scrollView.contentOffset.x > 314.0 && scrollView.contentOffset.x <= 629.0 {
            print("Cell is 2 and ScrollPoint is \(scrollView.contentOffset.x)")
            pageControl.currentPage = 1
        }
        if scrollView.contentOffset.x > 629.0 && scrollView.contentOffset.x <= 944.0 {
            print("Cell is 3 and ScrollPoint is \(scrollView.contentOffset.x)")
            pageControl.currentPage = 2
        }
        if scrollView.contentOffset.x > 944.0 && scrollView.contentOffset.x <= 1259.0 {
            print("Cell is 4 and ScrollPoint is \(scrollView.contentOffset.x)")
            pageControl.currentPage = 3
        }
        if scrollView.contentOffset.x > 1259.0 && scrollView.contentOffset.x <= 1575.0 {
            print("Cell is 5 and ScrollPoint is \(scrollView.contentOffset.x)")
            pageControl.currentPage = 4
        }
        
    }
    
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        print(#function)
    }
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity:CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        print(#function)
    }
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        print(#function)
    }
    
    
    func scrollViewShouldScrollToTop(_ scrollView: UIScrollView) -> Bool {
        print(#function)
        return true
    }
    
    func scrollViewWillBeginDecelerating(_ scrollView: UIScrollView) {
        print(#function)
        
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        print(#function)
        print("I am Called EndDecelerating")
    }
    
    
}
