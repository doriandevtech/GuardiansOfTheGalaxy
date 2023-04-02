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
        self.textColor = UIColor.red
        self.font = UIFont(name: "Chalkboard SE", size: 14)
    }
}
