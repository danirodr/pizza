//
//  MiPizza.swift
//  pizza
//
//  Created by Daniel Rodríguez Pérez on 6/12/15.
//  Copyright © 2015 Daniel Rodríguez Pérez. All rights reserved.
//

import Foundation

enum TamañoPizza : String {
    case chica = "Chica"
    case mediana = "Mediana"
    case grande = "Grande"
}

enum MasaPizza : String {
    case delgada = "Delgada"
    case crujiente = "Crujiente"
    case gruesa = "Gruesa"
}

enum QuesoPizza : String {
    case mozarela = "Mozarela"
    case cheddar = "Cheddar"
    case parmesano = "Parmesano"
    case sinQueso = "Sin queso"
}

class MiPizza: NSObject {
    // Propiedades de la pizza
    var tamaño : TamañoPizza
    var masa: MasaPizza
    var queso: QuesoPizza
    var ingredientes: String
    var numeroIngredientes :Int
    
    override init() {
        self.tamaño = TamañoPizza.mediana
        self.masa = MasaPizza.crujiente
        self.queso = QuesoPizza.sinQueso
        self.ingredientes = ""
        self.numeroIngredientes = 0
    }
}
