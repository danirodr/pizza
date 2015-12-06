//
//  SeleccionQueso.swift
//  pizza
//
//  Created by Daniel Rodríguez Pérez on 6/12/15.
//  Copyright © 2015 Daniel Rodríguez Pérez. All rights reserved.
//

import UIKit

class SeleccionQueso: UIViewController {
    var pizza : MiPizza = MiPizza()
    
    @IBAction func seleccionMozarela(sender: AnyObject) {
        self.pizza.queso = QuesoPizza.mozarela
    }
    
    @IBAction func seleccionChedda(sender: AnyObject) {
        self.pizza.queso = QuesoPizza.cheddar
    }
    
    @IBAction func seleccionParmesano(sender: AnyObject) {
        self.pizza.queso = QuesoPizza.parmesano
    }
    
    @IBAction func seleccionSinQueso(sender: AnyObject) {
        self.pizza.queso = QuesoPizza.sinQueso
    }
    
    @IBOutlet weak var seleccionTamaño: UILabel!
    
    @IBOutlet weak var seleccionMasa: UILabel!
    
    override func viewWillAppear(animated: Bool) {
        self.seleccionTamaño.text = "Tamaño: \(self.pizza.tamaño.rawValue)"
        self.seleccionMasa.text = "Masa: \(self.pizza.masa.rawValue)"
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let siguienteVista = segue.destinationViewController as! SeleccionIngredientes
        siguienteVista.pizza = self.pizza
    }
}
