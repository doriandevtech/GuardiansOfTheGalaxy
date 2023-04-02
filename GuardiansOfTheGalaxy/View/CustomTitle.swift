//
//  CustomTitle.swift
//  GuardiansOfTheGalaxy
//
//  Created by Dorian Emenir on 02/04/2023.
//

import UIKit

class CustomTitle: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupTitle()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupTitle()
    }
    
    func setupTitle() {
        self.textColor = UIColor.black
        self.font = UIFont(name: "Chalkboard SE", size: 30)
    }

}
