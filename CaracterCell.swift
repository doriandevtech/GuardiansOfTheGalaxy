//
//  CaracterCell.swift
//  GuardiansOfTheGalaxy
//
//  Created by Dorian Emenir on 23/03/2023.
//

import UIKit

class CaracterCell: UITableViewCell {
    
    @IBOutlet weak var caracterLbl: UILabel!
    @IBOutlet weak var caracterIV: UIImageView!
    
    func setupCell(name: String, imageV: String) {
        caracterLbl.text = name
        caracterIV.image = UIImage(named: imageV)
    }
}
