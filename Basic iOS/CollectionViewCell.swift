//
//  CollectionViewCell.swift
//  Basic iOS
//
//  Created by Renaldy on 05/02/21.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet private weak var nameCountry: UILabel!
    
    func configure(with countryName: String){
        nameCountry.text = countryName
    }
}
