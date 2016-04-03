//
//  VistaQueso.swift
//  CrearPizza
//
//  Created by mac on 04/03/16.
//  Copyright © 2016 Juan Sebastian Castro. All rights reserved.
//

import UIKit

class VistaQueso: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    var tipoQueso : String = ""
    
    
    @IBAction func quesoMozarela(sender: AnyObject) { // boton queso Mozarela
        tipoQueso = "Mozarela"
        print(tipoQueso)
    }
    
    @IBAction func quesoCheddar(sender: AnyObject) {
        tipoQueso = "Cheddar"
        print(tipoQueso)
    }

    @IBAction func quesoParmesano(sender: AnyObject) {
        tipoQueso = "Parmesano"
        print(tipoQueso)
    }
    
    @IBAction func sinQueso(sender: AnyObject) {
        tipoQueso = "Sin Queso"
        print(tipoQueso)
    }
    
    
    
    
    @IBAction func continuarQueso(sender: AnyObject) { // boton continuar vista queso
        
    }
    
    
    
}
