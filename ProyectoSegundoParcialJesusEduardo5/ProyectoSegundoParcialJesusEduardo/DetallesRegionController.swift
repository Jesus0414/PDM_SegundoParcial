//
//  DetallesRegionController.swift
//  ProyectoSegundoParcialJesusEduardo
//
//  Created by Alumno on 10/13/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import Foundation
import UIKit

class DetallesRegionController : UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tvPokedex: UITableView!
    var pokedex : [Pokedex] = []
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokedex.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celdaDes = tableView.dequeueReusableCell(withIdentifier: "celdaPokedex") as! CeldaPokedexController
        
        celdaDes.lblNombrePokemon.text = pokedex[indexPath.row].imgPokemon
        celdaDes.lblNoNacional.text = pokedex[indexPath.row].noNacional
        celdaDes.lblNoRegion.text = pokedex[indexPath.row].noRegional
        celdaDes.imgPokemon.image = UIImage(named: pokedex[indexPath.row].imgPokemon!)
        
        return celdaDes
    }
    
    
    @IBOutlet weak var lblNoPokemones: UILabel!
    @IBOutlet weak var lblDescripcion: UILabel!
    
    var region : Region = Region(nombre: "", descripcion: "", numPokemones: "", fotoRegion: "", pokedex: [])
    
    override func viewDidLoad() {
        self.title = region.nombre
        lblNoPokemones.text = region.numPokemones
        lblDescripcion.text = region.descripcion
        
    }
    
}
