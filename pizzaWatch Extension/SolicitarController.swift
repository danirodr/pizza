//
//  SolicitarController.swift
//  pizza
//
//  Created by Daniel Rodríguez Pérez on 26/12/15.
//  Copyright © 2015 Daniel Rodríguez Pérez. All rights reserved.
//

import WatchKit
import Foundation

class SolicitarController: WKInterfaceController {
    var pizza : MiPizza = MiPizza()
    
    @IBOutlet var tamaño: WKInterfaceLabel!
    @IBOutlet var masa: WKInterfaceLabel!
    @IBOutlet var queso: WKInterfaceLabel!
    @IBOutlet var ingredientes: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        self.pizza = context as! MiPizza
        
        self.tamaño.setText("Tamaño: \(self.pizza.tamaño.rawValue)")
        self.masa.setText("Masa: \(self.pizza.masa.rawValue)")
        self.queso.setText("Queso: \(self.pizza.queso.rawValue)")
        self.ingredientes.setText("Ingredientes: \(self.pizza.ingredientes)")
    }
    
    @IBAction func cancelar() {
        popController()
    }
}
