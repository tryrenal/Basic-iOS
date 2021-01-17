//
//  DetailViewController.swift
//  Basic iOS
//
//  Created by Renaldy on 17/01/21.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nameHero: UILabel!
    @IBOutlet weak var photoHero: UIImageView!
    @IBOutlet weak var descHero: UILabel!
    
    var hero: Hero?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let result = hero {
            photoHero.image = result.photo
            nameHero.text = result.name
            descHero.text = result.description
        }
    }
}
