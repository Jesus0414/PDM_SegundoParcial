//
//  ViewController.swift
//  ProyectoSegundoParcialJesusEduardo
//
//  Created by Alumno on 10/11/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ListaRegionesController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return regiones.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaRegion") as! CeldaRegionController
        celda.lblNombre.text = regiones[indexPath.row].nombre
        celda.imgRegion.image = UIImage(named: regiones[indexPath.row].fotoRegion)
        
        
        return celda
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }

    var regiones : [Region] = []
    
    
    @IBOutlet weak var tvRegiones: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "Regiones de Pokémon"
        
        regiones.append(Region(nombre: "Kanto", descripcion: "es una región del mundo Pokémon situada al este de Johto y al sur de Sinnoh. Su paisaje está inspirado en la zona de Japón del mismo nombre, la región de Kantō.", numPokemones: "Números de pokemones incluidos: 151", fotoRegion: "Mapa_Kanto"))
        regiones.append(Region(nombre: "Johto", descripcion: "es una región del mundo Pokémon situada al oeste de Kanto. Su paisaje está inspirado en la zona de Japón llamada región de Kinki y el oeste de la región de Tōkai.", numPokemones: "Números de pokemones incluidos: 100", fotoRegion: "Mapa_Johto"))
        regiones.append(Region(nombre: "Hoenn", descripcion: "es la región del mundo Pokémon donde se desarrolla la trama de los videojuegos Pokémon Rubí, Zafiro y Esmeralda y sus remakes, Pokémon Rubí Omega y Pokémon Zafiro Alfa.", numPokemones: "Números de pokemones incluidos: 135", fotoRegion: "Mapa_Hoenn"))
        regiones.append(Region(nombre: "Sinnoh", descripcion: "es una región del mundo Pokémon. Está al norte de Kanto. Su paisaje está inspirado en la zona de Japón Hokkaidō, la mitad sur de la isla rusa Sajalín y la isla de Kunashir.", numPokemones: "Números de pokemones incluidos: 107", fotoRegion: "Mapa_Sinnoh"))
        regiones.append(Region(nombre: "Unova", descripcion: "es la región en donde se desarrolla la trama de los videojuegos Pokémon Negro y Pokémon Blanco, y posteriormente también es escenario de los videojuegos Pokémon Negro 2 y Pokémon Blanco 2.", numPokemones: "Números de pokemones incluidos: 156", fotoRegion: "Mapa_Unova"))
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesRegionController
        destino.region = regiones[tvRegiones.indexPathForSelectedRow!.row]
    }
    
}

