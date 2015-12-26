//
//  MasaController.swift
//  pizza
//
//  Created by Daniel Rodríguez Pérez on 26/12/15.
//  Copyright © 2015 Daniel Rodríguez Pérez. All rights reserved.
//

import WatchKit
import Foundation

class MasaController: WKInterfaceController {
    
    var pizza : MiPizza = MiPizza()
    
    @IBAction func delgada() {
        self.pizza.masa = MasaPizza.delgada
        pushControllerWithName("Queso", context :self.pizza)
    }
    
    @IBAction func crujiente() {
        self.pizza.masa = MasaPizza.crujiente
        pushControllerWithName("Queso", context :self.pizza)
    }
    
    @IBAction func gruesa() {
        self.pizza.masa = MasaPizza.gruesa
        pushControllerWithName("Queso", context :self.pizza)
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        self.pizza = context as! MiPizza
    }
}
