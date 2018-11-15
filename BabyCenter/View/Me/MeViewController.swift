//
//  MeViewController.swift
//  BabyCenter
//
//  Created by Ky Rieu on 11/14/18.
//  Copyright © 2018 Phan Quy KY. All rights reserved.
//

import UIKit

class MeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet var collectionView: UICollectionView!
    
    let reuseIdentifier = "mecell" // also enter this string as the cell identifier in the storyboard
    
    var items = [BabyItemModel(n: "Guides", i: "ic_guild"),
                 BabyItemModel(n: "Weight", i: "ic_weight"),
                 BabyItemModel(n: "Appointments", i: "ic_appointment"),
                 BabyItemModel(n: "My body", i: "ic_body"),
                 BabyItemModel(n: "Yoga", i: "ic_yoga")]

    override func viewDidLoad() {
        super.viewDidLoad()

        if let layout = collectionView?.collectionViewLayout as? UICollectionViewFlowLayout{
            layout.minimumLineSpacing = 20
            layout.minimumInteritemSpacing = 20
            layout.sectionInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
            let size = CGSize(width:(collectionView!.bounds.width-60)/2, height: (collectionView!.bounds.width-60)/2)
            layout.itemSize = size
        }
    }
    
    // tell the collection view how many cells to make
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.items.count
    }
    
    // make a cell for each cell index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! MeCollectionViewCell
        cell.nameLabel.text = items[indexPath.row].name
        cell.image.image = UIImage(named: items[indexPath.row].image ?? "")
        
        return cell
    }
    
    // MARK: - UICollectionViewDelegate protocol
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // handle tap events
        print("You selected cell #\(indexPath.item)!")
    }

}
