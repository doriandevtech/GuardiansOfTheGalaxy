//
//  CustomDesc.swift
//  GuardiansOfTheGalaxy
//
//  Created by Dorian Emenir on 02/04/2023.
//

import UIKit

class CustomDesc: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupDesc()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupDesc()
    }
    
    func setupDesc() {
        textColor = UIColor.secondaryLabel
        adjustsFontSizeToFitWidth = true
        font = UIFont(name: "Chalkboard SE", size: 14)
        textAlignment = .natural
        numberOfLines = 0
    }
}
