//
//  DetailController.swift
//  GuardiansOfTheGalaxy
//
//  Created by Dorian Emenir on 23/03/2023.
//

import UIKit

class DetailController: UIViewController {

    @IBOutlet weak var imageV: BannerImageView!
    @IBOutlet weak var imageVMini: RoundedImageView!
    @IBOutlet weak var nameLbl: CustomTitle!
    @IBOutlet weak var descLbl: CustomDesc!
    
    var character: Character?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let c = character else { return }
        imageV.image = UIImage(named: c.imagePath)
        imageVMini.image = UIImage(named: c.imagePath)
        nameLbl.text = c.name
        descLbl.text = c.desc
    }

}
