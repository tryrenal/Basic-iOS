//
//  CollectionViewController.swift
//  Basic iOS
//
//  Created by Renaldy on 05/02/21.
//

import UIKit

class CollectionViewController: UICollectionViewController {
    
    let dataSource: [String] = ["Indonesia", "Malaysia", "Vietnam", "Thailand", "India"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = UICollectionViewCell()
        
        if let customCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? CollectionViewCell {
            customCell.configure(with: dataSource[indexPath.row])
        
            cell = customCell
        }
        
        return cell
    }

    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        print("Clicked: \(dataSource[indexPath.row])")
    }
    

}
