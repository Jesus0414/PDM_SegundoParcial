//
//  Pokedex.swift
//  ProyectoSegundoParcialJesusEduardo
//
//  Created by David Encinas on 23/10/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import Foundation

class Pokedex {

    var noNacional : String?
    var noRegional : String?
    var imgPokemon : String?
    
    init(noNacional: String, noRegional: String, imgPokemon: String) {
        self.noNacional = noNacional
        self.noRegional = noRegional
        self.imgPokemon = imgPokemon
    }
}
