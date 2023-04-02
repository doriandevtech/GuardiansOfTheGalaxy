//
//  RoundedImageView.swift
//  GuardiansOfTheGalaxy
//
//  Created by Dorian Emenir on 02/04/2023.
//

import UIKit

class RoundedImageView: UIImageView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    func setup() {
        layer.cornerRadius = self.frame.width / 2
        layer.borderWidth = 2
        layer.borderColor = UIColor.white.cgColor
    }
}
