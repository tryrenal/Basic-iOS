//
//  ViewController.swift
//  Basic iOS
//
//  Created by Renaldy on 13/01/21.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    @IBOutlet weak var imagePreview: UIImageView!
    
    let imageUrl = "https://www.w3schools.com/w3css/img_lights.jpg"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let urlImage = URL(string: imageUrl) else {
            return
        }
        
        imagePreview.load(url: urlImage)
    }


}

extension UIImageView {
    func load(url: URL){
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url){
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}

