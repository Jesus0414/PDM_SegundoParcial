//
//  DetallesRegionController.swift
//  ProyectoSegundoParcialJesusEduardo
//
//  Created by Alumno on 10/13/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import Foundation
import UIKit

class DetallesRegionController : UIViewController{
    
    @IBOutlet weak var lblNoPokemones: UILabel!
    @IBOutlet weak var lblDescripcion: UILabel!
    
    var region : Region = Region(nombre: "", descripcion: "", numPokemones: "", fotoRegion: "")
    
    override func viewDidLoad() {
        self.title = region.nombre
        lblNoPokemones.text = region.numPokemones
        lblDescripcion.text = region.descripcion
        
    }
    
}
