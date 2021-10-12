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
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaRegion")!
        
        return celda
    }
    

    var regiones : [Region] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "Regiones de Pokémon"
        
        regiones.append(Region(nombre: "Kanto", descripcion: "es una región del mundo Pokémon situada al este de Johto y al sur de Sinnoh. Su paisaje está inspirado en la zona de Japón del mismo nombre, la región de Kantō.", numPokemones: "Números de pokemones incluidos: 151"))
        regiones.append(Region(nombre: "Johto", descripcion: "es una región del mundo Pokémon situada al oeste de Kanto. Su paisaje está inspirado en la zona de Japón llamada región de Kinki y el oeste de la región de Tōkai.", numPokemones: "Números de pokemones incluidos: 100"))
        regiones.append(Region(nombre: "Hoenn", descripcion: "es la región del mundo Pokémon donde se desarrolla la trama de los videojuegos Pokémon Rubí, Zafiro y Esmeralda y sus remakes, Pokémon Rubí Omega y Pokémon Zafiro Alfa.", numPokemones: "Números de pokemones incluidos: 135"))
        regiones.append(Region(nombre: "Sinnoh", descripcion: "es una región del mundo Pokémon. Está al norte de Kanto. Su paisaje está inspirado en la zona de Japón Hokkaidō, la mitad sur de la isla rusa Sajalín y la isla de Kunashir.", numPokemones: "Números de pokemones incluidos: 107"))
        regiones.append(Region(nombre: "Unova", descripcion: "es la región en donde se desarrolla la trama de los videojuegos Pokémon Negro y Pokémon Blanco, y posteriormente también es escenario de los videojuegos Pokémon Negro 2 y Pokémon Blanco 2.", numPokemones: "Números de pokemones incluidos: 156"))
        regiones.append(Region(nombre: "Kalos", descripcion: "es la región del mundo Pokémon donde se desarrolla la trama de los videojuegos Pokémon X y Pokémon Y en la sexta generación. La región está basada en Francia y su capital es Ciudad Luminalia, cuya inspiración en París se aprecia sobre todo en la Torre Prisma, monumento semejante a la Torre Eiffel. Kalos presenta la mayor población de cualquier región, así como la variedad más amplia de especies Pokémon, que proceden de todo el mundo. Tal es así que su Pokédex regional la divide en tres partes: Kalos Centro, Kalos Costa y Kalos Montaña.", numPokemones: "Números de pokemones incluidos: 72"))
        regiones.append(Region(nombre: "Alola", descripcion: "es una región del mundo Pokémon compuesta por cuatro islas naturales: Melemele, Akala, Ula-Ula, y Poni, además de una pequeña isla artificial: el Paraíso Aether. En esta región se desarrollan los juegos de la séptima generación Pokémon Sol y Pokémon Luna y Pokémon Ultrasol y Pokémon Ultraluna. Se la conoce como un auténtico paraíso para los Pokémon.", numPokemones: "Números de pokemones incluidos: 88"))
        regiones.append(Region(nombre: "Galar", descripcion: "es una región del mundo Pokémon donde se desarrollará la trama de los videojuegos Pokémon Espada y Pokémon Escudo de la octava generación. Los Pokémon iniciales a escoger son Grookey, Scorbunny y Sobble. Fue presentada en el Nintendo Direct especial de Pokémon emitido el 27 de febrero del 2019.", numPokemones: "Números de pokemones incluidos: 89"))
    }


}

