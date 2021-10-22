//
//  Region.swift
//  ProyectoSegundoParcialJesusEduardo
//
//  Created by Alumno on 10/11/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import Foundation

class Region {
    var nombre = ""
    var descripcion = ""
    var numPokemones = ""
    var fotoRegion = ""
    
    init(nombre: String, descripcion: String, numPokemones: String, fotoRegion: String) {
        self.nombre = nombre
        self.descripcion = descripcion
        self.numPokemones = numPokemones
        self.fotoRegion = fotoRegion
    }
}
