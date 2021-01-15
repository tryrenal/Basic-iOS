//
//  DetailViewController.swift
//  Basic iOS
//
//  Created by Renaldy on 15/01/21.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        view.backgroundColor = .green
        
        let backButton = UIBarButtonItem(title: "Back", style: UIBarButtonItem.Style.plain, target: self, action: #selector(backAction))
    
        self.navigationItem.leftBarButtonItem = backButton
    }
    
    @objc func backAction() -> Void {
        dismiss(animated: true, completion: nil)
    }
}
