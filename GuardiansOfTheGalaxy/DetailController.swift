//
//  DetailController.swift
//  GuardiansOfTheGalaxy
//
//  Created by Dorian Emenir on 23/03/2023.
//

import UIKit

class DetailController: UIViewController {

    @IBOutlet weak var imageV: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var descLbl: UILabel!
    
    var character: Character?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let c = character else { return }
        imageV.image = UIImage(named: c.imagePath)
        nameLbl.text = c.name
        descLbl.text = c.desc
        
    }

}
