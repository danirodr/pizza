//
//  InterfaceController.swift
//  pizzaWatch Extension
//
//  Created by Daniel Rodríguez Pérez on 26/12/15.
//  Copyright © 2015 Daniel Rodríguez Pérez. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    var pizza : MiPizza = MiPizza()
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
    @IBAction func chica() {
        self.pizza.tamaño = TamañoPizza.chica
        pushControllerWithName("Masa", context :self.pizza)
    }

    @IBAction func mediana() {
        self.pizza.tamaño = TamañoPizza.mediana
        pushControllerWithName("Masa", context :self.pizza)
    }
    
    @IBAction func grande() {
        self.pizza.tamaño = TamañoPizza.grande
        pushControllerWithName("Masa", context :self.pizza)
    }
}
