//
//  ViewController.swift
//  01.iamrich
//
//  Created by Arnol Peralta on 6/4/19.
//  Copyright © 2019 Arnol Peralta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var llblTitulo: UILabel!
    
    @IBOutlet weak var imagen: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("HOLA MUNDO")
    }

    @IBAction func btnPulsar(_ sender: UIButton) {
        /*self.llblTitulo.text = "He pulsado el boton"
        self.llblTitulo.textColor = UIColor.blue
        self.llblTitulo.font = UIFont.systemFont(ofSize: 35.0)
        self.imagen.image = UIImage(named: "ruby")
        */
        
        
      let controller = UIAlertController(title: "I am rich "
            , message: "I am rich", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default) { (action) in
            print("Pulso")
        }
        let actionCancel = UIAlertAction(title: "Cancelar", style: .cancel, handler:  { (action) in
            print("Pulso Cancelar")
        })
        let actionDestructive = UIAlertAction(title: "Cancelar d", style: .destructive) { _ in
            print("Pulso actionDestructive")
        }
        
        controller.addAction(action)
        controller.addAction(actionCancel)
        controller.addAction(actionDestructive)
        self.show(controller, sender: nil)
        
    }
    
}

