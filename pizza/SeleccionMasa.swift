//
//  SeleccionMasa.swift
//  pizza
//
//  Created by Daniel Rodríguez Pérez on 6/12/15.
//  Copyright © 2015 Daniel Rodríguez Pérez. All rights reserved.
//

import UIKit

class SeleccionMasa: UIViewController {
    var pizza : MiPizza = MiPizza()
    
    @IBAction func seleccionDelgada(sender: AnyObject) {
        self.pizza.masa = MasaPizza.delgada
    }
    
    @IBAction func seleccionCrujiente(sender: AnyObject) {
        self.pizza.masa = MasaPizza.crujiente
    }
    
    @IBAction func seleccionGruesa(sender: AnyObject) {
        self.pizza.masa = MasaPizza.gruesa
    }
    
    @IBOutlet weak var seleccion: UILabel!
    
    override func viewWillAppear(animated: Bool) {
        self.seleccion.text = "Tamaño: \(self.pizza.tamaño.rawValue)"
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let siguienteVista = segue.destinationViewController as! SeleccionQueso
        siguienteVista.pizza = self.pizza
    }
}
