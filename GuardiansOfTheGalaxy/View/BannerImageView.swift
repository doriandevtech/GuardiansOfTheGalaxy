//
//  BannerImageView.swift
//  GuardiansOfTheGalaxy
//
//  Created by Dorian Emenir on 02/04/2023.
//

import UIKit

class BannerImageView: UIImageView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    func setup() {
        self.contentMode = .scaleAspectFill
    }
}
