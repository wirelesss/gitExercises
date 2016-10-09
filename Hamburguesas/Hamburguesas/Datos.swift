//
//  Datos.swift
//  Hamburguesas
//
//  Created by Rodrigo on 08/10/16.
//  Copyright © 2016 Rodrigo Hernandez. All rights reserved.
//

import Foundation
import UIKit // Para importar libreria de colores

class ColeccionDePaises{
    
    let paises : [String] = [
        "Alemania","Argentina","Australia",
        "Austria","Bélgica","Bosnia",
        "Chile","China","Colombia",
        "Dinamarca","Egipto","España",
        "Estados Unidos","Finlandia","Gran Bretaña",
        "Israel","Malasia","Marruecos",
        "México","Puerto Rico","Rumania"]
    func obtenPais( )->String{
        return paises[ Int(arc4random()) % paises.count]
    }
}

class ColeccionDeHamburguesa{

    let hamburguesas : [String] = [
        "Tropical","De la Casa","Primaveral",
        "Chilosa","Extravagante","Caribeña",
        "Light", "Extra-Light", "Fresca",
        "Aromatizada","FinasHierbas","Vegetariana",
        "Remojada","SinAditivos","Salada",
        "DeMenta","Frutal","Extra-Chilosa",
        "DeMariscos","Otoñal","DePlaya"
    ]
    
    func obtenHamburguesa( )->String{
        return hamburguesas[ Int(arc4random()) % hamburguesas.count]
    }
}

struct ColeccionDeColores{
    //Estructura de colores:
    
    let colores = [
        UIColor(red:210/255.0, green: 90/255.0, blue: 45/255.0, alpha: 1),
        UIColor(red:40/255.0, green: 170/255.0, blue: 45/255.0, alpha: 1),
        UIColor(red:3/255.0, green: 180/255.0, blue: 90/255.0, alpha: 1),
        UIColor(red:210/255.0, green: 190/255.0, blue: 5/255.0, alpha: 1),
        UIColor(red:120/255.0, green: 120/255.0, blue: 50/255.0, alpha: 1),
        UIColor(red:130/255.0, green: 80/255.0, blue: 90/255.0, alpha: 1),
        UIColor(red:130/255.0, green: 130/255.0, blue: 130/255.0, alpha: 1),
        UIColor(red:30/255.0, green: 50/255.0, blue: 90/255.0, alpha: 1),
        UIColor(red:50/255.0, green: 80/255.0, blue: 120/255.0, alpha: 1),
        UIColor(red:70/255.0, green: 110/255.0, blue: 150/255.0, alpha: 1),
        UIColor(red:90/255.0, green: 140/255.0, blue: 180/255.0, alpha: 1),
        UIColor(red:110/255.0, green: 170/255.0, blue: 210/255.0, alpha: 1),
        UIColor(red:130/255.0, green: 200/255.0, blue: 240/255.0, alpha: 1),
        UIColor(red:150/255.0, green: 230/255.0, blue: 230/255.0, alpha: 1),
        UIColor(red:170/255.0, green: 220/255.0, blue: 200/255.0, alpha: 1),
        UIColor(red:190/255.0, green: 190/255.0, blue: 170/255.0, alpha: 1),
        UIColor(red:210/255.0, green: 160/255.0, blue: 140/255.0, alpha: 1),
        UIColor(red:230/255.0, green: 130/255.0, blue: 110/255.0, alpha: 1),
        UIColor(red:250/255.0, green: 100/255.0, blue: 80/255.0, alpha: 1),
        UIColor(red:253/255.0, green: 70/255.0, blue: 50/255.0, alpha: 1),
        UIColor(red:255/255.0, green: 40/255.0, blue: 20/255.0, alpha: 1)
    ]
    
    func obtenColor()->UIColor{
        let posicion = Int(arc4random()) % colores.count
        return colores[posicion]
    }
    
}
