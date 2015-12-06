//
//  SolicitudPedido.swift
//  pizza
//
//  Created by Daniel Rodríguez Pérez on 6/12/15.
//  Copyright © 2015 Daniel Rodríguez Pérez. All rights reserved.
//

import UIKit

class SolicitudPedido: UIViewController {
    var pizza : MiPizza = MiPizza()
    
    @IBOutlet weak var datosTamaño: UILabel!
    @IBOutlet weak var datosMasa: UILabel!
    @IBOutlet weak var datosQueso: UILabel!
    @IBOutlet weak var datosIngredientes: UILabel!
    @IBOutlet weak var listaIngredientes: UILabel!
    
    override func viewWillAppear(animated: Bool) {
        self.datosTamaño.text = "Tamaño: \(self.pizza.tamaño.rawValue)"
        self.datosMasa.text = "Masa: \(self.pizza.masa.rawValue)"
        self.datosQueso.text = "Queso: \(self.pizza.queso.rawValue)"
        self.datosIngredientes.text = "Número de ingredientes: \(self.pizza.numeroIngredientes)"
        self.listaIngredientes.text = "Ingredientes: \(self.pizza.ingredientes)"
    }
}
