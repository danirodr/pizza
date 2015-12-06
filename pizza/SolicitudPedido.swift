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
    
    @IBAction func confirmar(sender: AnyObject) {
        let refreshAlert = UIAlertController(title: "Confirmar pedido", message: "¿Desea confirmar el pedido de la pizza?", preferredStyle: UIAlertControllerStyle.Alert)
        
        refreshAlert.addAction(UIAlertAction(title: "Si", style: .Default, handler: { (action: UIAlertAction!) in
            print("Handle Ok logic here")
        }))
        
        refreshAlert.addAction(UIAlertAction(title: "No", style: .Default, handler: { (action: UIAlertAction!) in
            print("Handle Cancel Logic here")
        }))
        
        presentViewController(refreshAlert, animated: true, completion: nil)
    }
    
    override func viewWillAppear(animated: Bool) {
        self.datosTamaño.text = "Tamaño: \(self.pizza.tamaño.rawValue)"
        self.datosMasa.text = "Masa: \(self.pizza.masa.rawValue)"
        self.datosQueso.text = "Queso: \(self.pizza.queso.rawValue)"
        self.datosIngredientes.text = "Número de ingredientes: \(self.pizza.numeroIngredientes)"
        self.listaIngredientes.text = "Ingredientes: \(self.pizza.ingredientes)"
    }
}
