//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Rodrigo on 08/10/16.
//  Copyright © 2016 Rodrigo Hernandez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let paises = ColeccionDePaises()
    let hamburguesas = ColeccionDeHamburguesa()
    let colores = ColeccionDeColores()
    
    @IBOutlet weak var labelNombrePais: UILabel!
    @IBOutlet weak var labelNombreHamburguesa: UILabel!
    
    
    @IBAction func actionPedirHamburguesa(sender: AnyObject) {
        labelNombrePais.text = paises.obtenPais()
        labelNombreHamburguesa.text=hamburguesas.obtenHamburguesa()
        view.backgroundColor = colores.obtenColor()
        
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

