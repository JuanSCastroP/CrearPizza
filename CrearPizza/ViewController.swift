//
//  ViewController.swift
//  CrearPizza
//
//  Created by mac on 04/01/16.
//  Copyright © 2016 Juan Sebastian Castro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var tpizza : String = ""
    let imgPizzaGrande = "Pizzas Grande.jpg"
    let imgPizzaMediana = "Pizzas Mediana.jpg"
    let imgPizzaPequena = "Pizzas Pequeñas.jpg"

    
    
    //let image = UIImage(named: imageName)
    //let imageView = UIImageView(image: image!)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBOutlet weak var mostrarTamano: UIImageView!
    
    
    @IBAction func TPequena(sender: AnyObject) { // boton tamaño pequeña
        tpizza = "Pequeña"
        print("Tamaño: \(tpizza)")
    }

    
    @IBAction func TMediana(sender: AnyObject) {// boton tamaño mediana
        tpizza = "Mediana"
        print("Tamaño: \(tpizza)")
    }
    
    
    @IBAction func TGrande(sender: AnyObject) { // boton tamaño grande
        tpizza = "Grande"
        print("Tamaño: \(tpizza)")
    }
    
    private func showErrorAlertMessage(mensaje: String) {
        let alertController = UIAlertController(title: "Error", message: mensaje, preferredStyle: .Alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
        self.presentViewController(alertController, animated: true, completion: nil)
        //clearFields()
    }
    
    @IBAction func ContinuarTamano(sender: AnyObject) { // boton para continuar
        if tpizza == ""{
            showErrorAlertMessage("Por favor selecciona un tamaño para tu Pizza")
        }else{
            print("Continuara con tamaño:\(tpizza)")
            enviarTamano()
        }
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let tamanoP = enviarTamano()
        let sigVista = segue.destinationViewController as! VistaSelecionaMasa // obtiene referencia a la siguiente vista
        sigVista.traerTamanoPizza = tamanoP // se calcula el valor y sea enviado al objeto de la segunda pantalla
    }
    

    func enviarTamano() -> String{ // envia tamaño a la vista de seleccion de masa
        return tpizza

    }
    

}

