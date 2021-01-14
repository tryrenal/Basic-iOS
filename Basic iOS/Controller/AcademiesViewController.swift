//
//  AcademiesViewController.swift
//  Basic iOS
//
//  Created by Renaldy on 14/01/21.
//

import UIKit

class AcademiesViewController: UIViewController {
    
    @IBOutlet weak var androidAcademy: UIStackView!
    @IBOutlet weak var unityAcademy: UIStackView!
    @IBOutlet weak var cloudAcademy: UIStackView!
    @IBOutlet weak var arvrAcademy: UIStackView!
    
    var academies = [ ("Android Developer", "Lorem ipsum dolor sit amet", UIImage(named: "android")),
                      ("Unity Game Developer", "Lorem ipsum dolor sit amet", UIImage(named: "unity")),
                      ("AR / VR Developer", "Lorem ipsum dolor sit amet", UIImage(named: "arvr")),
                      ("Cloud Developer", "Lorem ipsum dolor sit amet", UIImage(named: "cloud")),
                      ("Lorem ipsum dolor sit amet", "Lorem ipsum dolor sit amet", UIImage(named: "android"))]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addTapped(parameter: &androidAcademy)
        addTapped(parameter: &unityAcademy)
        addTapped(parameter: &arvrAcademy)
        addTapped(parameter: &cloudAcademy)
    }
    
    func addTapped(parameter: inout UIStackView){
        //menambahkan gestur tap
        parameter.isUserInteractionEnabled = true
        parameter.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.objectTapped)))
    }
    
    @objc func objectTapped(gesture: UIGestureRecognizer){
        let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "DetailViewScene") as! DetailViewController
        
        switch gesture.view as? UIStackView {
        case (androidAcademy):
            controller.detail = academies[0]
        case (unityAcademy):
            controller.detail = academies[1]
        case (arvrAcademy):
            controller.detail = academies[2]
        case (cloudAcademy):
            controller.detail = academies[3]
        default:
            controller.detail = academies[4]
        }
        
        self.present(controller, animated: true, completion: nil)
    }
    
}
