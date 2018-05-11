//
//  HomeViewViewController.swift
//  UniversalApp
//
//  Created by Admin on 5/11/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class HomeViewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}

class homeMenuCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var icon : UIImageView!
    @IBOutlet weak var iconName : UILabel!
    
}

extension HomeViewViewController : UICollectionViewDelegate {
    
    // Swift 3.0
//     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: CGFloat((collectionView.frame.size.width / 3)), height: CGFloat(100))
//    }
    
}

extension HomeViewViewController : UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 40
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "homeMenuCell", for: indexPath) as! homeMenuCollectionCell
        cell.iconName.text = "Icon Name"
        return cell
    }
    
}
