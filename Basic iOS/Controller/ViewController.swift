//
//  ViewController.swift
//  Basic iOS
//
//  Created by Renaldy on 13/01/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func editProfile(_ sender: UIBarButtonItem) {
        
        let alert = UIAlertController(title: "Apakah anda berniat untuk mengubah profil?", message: "Anda dapat mempengaruhi profil anda sekarang juga", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "ya", style: .default, handler: { action in print("mengganti profile")}))
    
        alert.addAction(UIAlertAction(title: "tidak", style: .cancel, handler: {
            action in print("Membatalkan ubah profile")
        }))
        
        self.present(alert, animated: true)
    }
}

