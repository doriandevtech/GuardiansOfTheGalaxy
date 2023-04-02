//
//  CharacterCell.swift
//  GuardiansOfTheGalaxy
//
//  Created by Dorian Emenir on 23/03/2023.
//

import UIKit

class CharacterCell: UITableViewCell {
    
    @IBOutlet weak var characterLbl: UILabel!
    @IBOutlet weak var characterIV: UIImageView!
    
    func setupCell(name: String, imageV: String) {
        characterLbl.text = name
        characterIV.image = UIImage(named: imageV)
    }
}
