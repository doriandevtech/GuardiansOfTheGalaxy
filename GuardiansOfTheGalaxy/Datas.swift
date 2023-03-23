//
//  Datas.swift
//  GuardiansOfTheGalaxy
//
//  Created by Dorian Emenir on 23/03/2023.
//

import Foundation

class Datas {
    
    static let shared = Datas()
    
    let lorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\nSed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"
     
    var caracters: [Caracter] {
        return [
            Caracter(name: "Yondu", desc: lorem, imagePath: "yondu"),
            Caracter(name: "Star Lord", desc: lorem, imagePath: "starlord"),
            Caracter(name: "Rocket Raccoon", desc: lorem, imagePath: "rocketraccoon"),
            Caracter(name: "Nebula", desc: lorem, imagePath: "nebula"),
            Caracter(name: "Mantis", desc: lorem, imagePath: "mantis"),
            Caracter(name: "Gamora", desc: lorem, imagePath: "gamora"),
            Caracter(name: "Ego", desc: lorem, imagePath: "ego"),
            Caracter(name: "Drax", desc: lorem, imagePath: "drax"),
            Caracter(name: "Baby Groot", desc: lorem, imagePath: "babygroot"),
            Caracter(name: "Ayesha", desc: lorem, imagePath: "ayesha"),
        ]
    }
}
