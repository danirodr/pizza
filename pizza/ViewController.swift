//
//  ViewController.swift
//  pizza
//
//  Created by Daniel Rodríguez Pérez on 6/12/15.
//  Copyright © 2015 Daniel Rodríguez Pérez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var pizza : MiPizza = MiPizza()
    
    @IBAction func seleccionChica(sender: AnyObject) {
        self.pizza.tamaño = TamañoPizza.chica
    }
    
    @IBAction func seleccionMediana(sender: AnyObject) {
        self.pizza.tamaño = TamañoPizza.mediana
    }
    
    @IBAction func seleccionGrande(sender: AnyObject) {
        self.pizza.tamaño = TamañoPizza.grande
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let siguienteVista = segue.destinationViewController as! SeleccionMasa
        siguienteVista.pizza = self.pizza
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

