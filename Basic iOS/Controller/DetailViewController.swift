//
//  DetailViewController.swift
//  Basic iOS
//
//  Created by Renaldy on 14/01/21.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var titleDetail: UILabel!
    @IBOutlet weak var descDeteail: UILabel!
    @IBOutlet weak var imageDetail: UIImageView!
   
    var detail : (title: String?, desc: String?, image: UIImage?)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleDetail.text = detail.title
        descDeteail.text = detail.desc
        imageDetail.image = detail.image
    }
    

}
