//
//  ViewController.swift
//  Basic iOS
//
//  Created by Renaldy on 13/01/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heroTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        heroTableView.dataSource = self
        
        heroTableView.register(UINib(nibName: "HeroTableViewCell", bundle: nil), forCellReuseIdentifier: "HeroCell")
    }
    
}

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return heroes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "HeroCell" , for: indexPath) as? HeroTableViewCell {
            let hero = heroes[indexPath.row]
            cell.nameHero.text = hero.name
            cell.descHero.text = hero.description
            cell.photoHero.image = hero.photo
            
            cell.photoHero.layer.cornerRadius = cell.photoHero.frame.height / 2
            cell.photoHero.clipsToBounds = true
            return cell
        } else {
            return UITableViewCell()
        }
    }
}
