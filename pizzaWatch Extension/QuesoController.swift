//
//  QuesoController.swift
//  pizza
//
//  Created by Daniel Rodríguez Pérez on 26/12/15.
//  Copyright © 2015 Daniel Rodríguez Pérez. All rights reserved.
//

import WatchKit
import Foundation

class QuesoController: WKInterfaceController {
    
    var pizza : MiPizza = MiPizza()

    @IBAction func mozarela() {
        self.pizza.queso = QuesoPizza.mozarela
        pushControllerWithName("Ingredientes", context :self.pizza)
    }
    
    @IBAction func cheddar() {
        self.pizza.queso = QuesoPizza.cheddar
        pushControllerWithName("Ingredientes", context :self.pizza)
    }
    
    @IBAction func parmesano() {
        self.pizza.queso = QuesoPizza.parmesano
        pushControllerWithName("Ingredientes", context :self.pizza)
    }
    
    @IBAction func sinQueso() {
        self.pizza.queso = QuesoPizza.sinQueso
        pushControllerWithName("Ingredientes", context :self.pizza)
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        self.pizza = context as! MiPizza
    }
}
