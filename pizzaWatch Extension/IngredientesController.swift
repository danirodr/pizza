//
//  IngredientesController.swift
//  pizza
//
//  Created by Daniel Rodríguez Pérez on 26/12/15.
//  Copyright © 2015 Daniel Rodríguez Pérez. All rights reserved.
//

import WatchKit
import Foundation

class IngredientesController: WKInterfaceController {
    
    var pizza : MiPizza = MiPizza()
    
    @IBOutlet var jamon: WKInterfaceSwitch!
    @IBOutlet var pepperoni: WKInterfaceSwitch!
    @IBOutlet var pavo: WKInterfaceSwitch!
    @IBOutlet var salchicha: WKInterfaceSwitch!
    @IBOutlet var aceituna: WKInterfaceSwitch!
    @IBOutlet var cebolla: WKInterfaceSwitch!
    @IBOutlet var pimineto: WKInterfaceSwitch!
    @IBOutlet var piña: WKInterfaceSwitch!
    @IBOutlet var anchoa: WKInterfaceSwitch!
    @IBOutlet var tomate: WKInterfaceSwitch!
    
    @IBOutlet var seleccionar: WKInterfaceButton!
    
    override func willActivate() {
        super.willActivate()
        
        self.pizza.numeroIngredientes = 0
        
        self.jamon.setOn(self.pizza.tieneJamon)
        self.pepperoni.setOn(self.pizza.tienePepperoni)
        self.pavo.setOn(self.pizza.tienePavo)
        self.salchicha.setOn(self.pizza.tieneSalchicha)
        self.aceituna.setOn(self.pizza.tieneAceituna)
        self.cebolla.setOn(self.pizza.tieneCebolla)
        self.piña.setOn(self.pizza.tienePimiento)
        self.anchoa.setOn(self.pizza.tienePiña)
        self.tomate.setOn(self.pizza.tieneTomate)
    }
    
    @IBAction func seleccionaJamon(value: Bool) {
        self.pizza.tieneJamon = value
        self.validaSeleccion()
    }
    
    @IBAction func seleccionaPepperoni(value: Bool) {
        self.pizza.tienePepperoni = value
        self.validaSeleccion()
    }
    
    @IBAction func seleccionaPavo(value: Bool) {
        self.pizza.tienePavo = value
        self.validaSeleccion()
    }
    
    @IBAction func seleccionaSalchicha(value: Bool) {
        self.pizza.tieneSalchicha = value
        self.validaSeleccion()
    }
    
    @IBAction func seleccionaAceituna(value: Bool) {
        self.pizza.tieneAceituna = value
        self.validaSeleccion()
    }
    
    @IBAction func seleccionaCebolla(value: Bool) {
        self.pizza.tieneCebolla = value
        self.validaSeleccion()
    }
    
    @IBAction func seleccionaPimiento(value: Bool) {
        self.pizza.tienePimiento = value
        self.validaSeleccion()
    }
    
    @IBAction func seleccionaPiña(value: Bool) {
        self.pizza.tienePiña = value
        self.validaSeleccion()
    }
    
    @IBAction func seleccionaAnchoa(value: Bool) {
        self.pizza.tieneAnchoa = value
        self.validaSeleccion()
    }
    
    @IBAction func seleccionaTomante(value: Bool) {
        self.pizza.tieneTomate = value
        self.validaSeleccion()
    }
    
    func validaSeleccion() {
        self.pizza.ingredientes = ""
        self.pizza.numeroIngredientes = 0
        
        if (self.pizza.tieneJamon) {
            self.validaSeparador()
            self.pizza.ingredientes += "Jamón"
            self.pizza.numeroIngredientes++
        }
        
        if (self.pizza.tienePepperoni) {
            self.validaSeparador()
            self.pizza.ingredientes += "Pepperoni"
            self.pizza.numeroIngredientes++
        }
        
        if (self.pizza.tienePavo) {
            self.validaSeparador()
            self.pizza.ingredientes += "Pavo"
            self.pizza.numeroIngredientes++
        }
        
        if (self.pizza.tieneSalchicha) {
            self.validaSeparador()
            self.pizza.ingredientes += "Salchicha"
            self.pizza.numeroIngredientes++
        }
        
        if (self.pizza.tieneAceituna) {
            self.validaSeparador()
            self.pizza.ingredientes += "Aceituna"
            self.pizza.numeroIngredientes++
        }
        
        if (self.pizza.tieneCebolla) {
            self.validaSeparador()
            self.pizza.ingredientes += "Cebolla"
            self.pizza.numeroIngredientes++
        }
        
        if (self.pizza.tienePimiento) {
            self.validaSeparador()
            self.pizza.ingredientes += "Pimiento"
            self.pizza.numeroIngredientes++
        }
        
        if (self.pizza.tienePiña) {
            self.validaSeparador()
            self.pizza.ingredientes += "Piña"
            self.pizza.numeroIngredientes++
        }
        
        if (self.pizza.tieneAnchoa) {
            self.validaSeparador()
            self.pizza.ingredientes += "Anchoa"
            self.pizza.numeroIngredientes++
        }
        
        if (self.pizza.tieneTomate) {
            self.validaSeparador()
            self.pizza.ingredientes += "Tomate"
            self.pizza.numeroIngredientes++
        }
        
        if (self.pizza.numeroIngredientes == 0) {
            self.seleccionar.setEnabled(false)
        } else if (self.pizza.numeroIngredientes > 5) {
            self.seleccionar.setEnabled(false)
        } else {
            self.seleccionar.setEnabled(true)
        }
    }
    
    @IBAction func confirmar() {
        pushControllerWithName("Solicitar", context :self.pizza)
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        self.pizza = context as! MiPizza
    }
    
    func validaSeparador() {
        if (self.pizza.numeroIngredientes > 0) {
            self.pizza.ingredientes += " ,"
        }
    }
}


