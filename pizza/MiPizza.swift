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
    
    var tieneJamon : Bool = false
    var tienePepperoni : Bool = false
    var tienePavo : Bool = false
    var tieneSalchicha : Bool = false
    var tieneAceituna : Bool = false
    var tieneCebolla : Bool = false
    var tienePimiento: Bool = false
    var tienePiña: Bool = false
    var tieneAnchoa: Bool = false
    var tieneTomate: Bool = false
    
    override init() {
        self.tamaño = TamañoPizza.mediana
        self.masa = MasaPizza.crujiente
        self.queso = QuesoPizza.sinQueso
        self.ingredientes = ""
        self.numeroIngredientes = 0
    }
}
