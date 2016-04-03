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
    private func showErrorAlertMessage(mensaje: String) { // para mostrar mensaje de error
        let alertController = UIAlertController(title: "Error", message: mensaje, preferredStyle: .Alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
        self.presentViewController(alertController, animated: true, completion: nil)
        //clearFields()
    }

    var tipoQueso : String = ""
    
    @IBOutlet weak var tamanoPizza2: UILabel! //mostrar tamaño
    var traerTamanoPizzaEnVQueso : String = ""
    
    
    @IBOutlet weak var traerMasa: UILabel!
    var traerMasaEnVQueso : String = ""
    
    @IBOutlet weak var tipoMasa: UILabel! //mostrar tpo masa
    
    
    override func viewWillAppear(animated: Bool) {// trae el tamaño de la pizza
        tamanoPizza2.text = traerTamanoPizzaEnVQueso
        traerMasa.text = traerMasaEnVQueso
        
        
    }

    
    
    
    @IBAction func quesoMozarela(sender: AnyObject) { // boton queso Mozarela
        tipoQueso = "Mozarela"
        print(tipoQueso)
    }
    
    @IBAction func quesoCheddar(sender: AnyObject) {// boton queso Cheddar
        tipoQueso = "Cheddar"
        print(tipoQueso)
    }

    @IBAction func quesoParmesano(sender: AnyObject) { // boton queso Parmesano
        tipoQueso = "Parmesano"
        print(tipoQueso)
    }
    
    @IBAction func sinQueso(sender: AnyObject) { // boton sin queso
        tipoQueso = "Sin Queso"
        print(tipoQueso)
    }
    
    @IBAction func continuarQueso(sender: AnyObject) { // boton continuar vista queso
        
        if tipoQueso == ""{
            showErrorAlertMessage("Por favor selecciona un Tipo de Queso para tu Pizza")
        }
        else{
            print("Masa tipo \(tipoQueso)")
            enviarQueso()
        }
    }
    
    func enviarQueso() -> String{
        print("Continuara con Queso: \(tipoQueso)")
        return tipoQueso
    }
    
    
    
    
    
}
