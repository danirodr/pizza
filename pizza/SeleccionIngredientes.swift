//
//  seleccionIngredientes.swift
//  pizza
//
//  Created by Daniel Rodríguez Pérez on 6/12/15.
//  Copyright © 2015 Daniel Rodríguez Pérez. All rights reserved.
//

import UIKit

class SeleccionIngredientes: UIViewController {
    var pizza : MiPizza = MiPizza()
    
    @IBOutlet weak var tieneJamon: UISwitch!
    @IBOutlet weak var tienePepperoni: UISwitch!
    @IBOutlet weak var tienePavo: UISwitch!
    @IBOutlet weak var tieneSalchicha: UISwitch!
    @IBOutlet weak var tieneAceituna: UISwitch!
    @IBOutlet weak var tieneCebolla: UISwitch!
    @IBOutlet weak var tienePimiento: UISwitch!
    @IBOutlet weak var tienePiña: UISwitch!
    @IBOutlet weak var tieneAnchoa: UISwitch!
    @IBOutlet weak var tieneTomate: UISwitch!
    
    @IBOutlet weak var seleccionPrevia: UILabel!
    
    @IBOutlet weak var listaIngredientes: UILabel!
    
    @IBOutlet weak var botonReserva: UIButton!
    
    @IBAction func seleccionaJamon(sender: AnyObject) {
        self.pizza.ingredientes = ""
        self.pizza.numeroIngredientes = 0
        
        if (tieneJamon.on) {
            self.validaSeparador()
            self.pizza.ingredientes += "Jamón"
            self.pizza.numeroIngredientes++
        }
        
        if (tienePepperoni.on) {
            self.validaSeparador()
            self.pizza.ingredientes += "Pepperoni"
            self.pizza.numeroIngredientes++
        }
        
        if (tienePavo.on) {
            self.validaSeparador()
            self.pizza.ingredientes += "Pavo"
            self.pizza.numeroIngredientes++
        }
        
        if (tieneSalchicha.on) {
            self.validaSeparador()
            self.pizza.ingredientes += "Salchicha"
            self.pizza.numeroIngredientes++
        }
        
        if (tieneAceituna.on) {
            self.validaSeparador()
            self.pizza.ingredientes += "Aceituna"
            self.pizza.numeroIngredientes++
        }
        
        if (tieneCebolla.on) {
            self.validaSeparador()
            self.pizza.ingredientes += "Cebolla"
            self.pizza.numeroIngredientes++
        }
        
        if (tienePimiento.on) {
            self.validaSeparador()
            self.pizza.ingredientes += "Pimiento"
            self.pizza.numeroIngredientes++
        }
        
        if (tienePiña.on) {
            self.validaSeparador()
            self.pizza.ingredientes += "Piña"
            self.pizza.numeroIngredientes++
        }
        
        if (tieneAnchoa.on) {
            self.validaSeparador()
            self.pizza.ingredientes += "Anchoa"
            self.pizza.numeroIngredientes++
        }
        
        if (tieneTomate.on) {
            self.validaSeparador()
            self.pizza.ingredientes += "Tomate"
            self.pizza.numeroIngredientes++
        }
        
        if (self.pizza.numeroIngredientes == 0) {
            botonReserva.enabled = false
            self.listaIngredientes.text = "No Ha seleccionado ingredientes"
        } else if (self.pizza.numeroIngredientes > 5) {
            botonReserva.enabled = false
            self.listaIngredientes.text = "Ha seleccionado \(self.pizza.numeroIngredientes ) y el máximo es 5"
        } else {
            botonReserva.enabled = true
            self.listaIngredientes.text = "Ingredientes: \(self.pizza.ingredientes)"
        }
        
    }
    
    override func viewDidLoad() {
        self.tieneJamon.on = false
        self.tienePepperoni.on = false
        self.tienePavo.on = false
        self.tieneSalchicha.on = false
        self.tieneAceituna.on = false
        self.tieneCebolla.on = false
        self.tienePimiento.on = false
        self.tienePiña.on = false
        self.tieneAnchoa.on = false
        self.tieneTomate.on = false
    }
    
    override func viewWillAppear(animated: Bool) {
         self.seleccionPrevia.text = "Tamaño: \(self.pizza.tamaño.rawValue), masa: \(self.pizza.masa.rawValue) queso: \(self.pizza.queso.rawValue)"
        self.seleccionaJamon(self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let siguienteVista = segue.destinationViewController as! SolicitudPedido
        siguienteVista.pizza = self.pizza
    }
    
    func validaSeparador() {
        if (self.pizza.numeroIngredientes > 0) {
            self.pizza.ingredientes += " ,"
        }
    }
    
}
