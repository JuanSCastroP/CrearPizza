//
//  VIstaIngredientes.swift
//  CrearPizza
//
//  Created by mac on 04/03/16.
//  Copyright © 2016 Juan Sebastian Castro. All rights reserved.
//

import UIKit

class VIstaIngredientes: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    private func showErrorAlertMessage(mensaje: String) { // para mostrar mensaje de error
        let alertController = UIAlertController(title: "Error", message: mensaje, preferredStyle: .Alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
        self.presentViewController(alertController, animated: true, completion: nil)
        //clearFields()
    }



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    

    
    
    
    //Labels para mostrar selecciones anteriores
    @IBOutlet weak var mostrarTamano: UILabel!
    @IBOutlet weak var mostrarMasa: UILabel!
    @IBOutlet weak var mostrarQueso: UILabel!

    var contador : Int = 0
    var ingrediente : String = ""
    var traerTamanoEnIngredientes : String = ""
    var traerMasaEnIngredientes : String = ""
    var traerQuesoEnIngredientes : String = ""
    
    override func viewWillAppear(animated: Bool) {// trae el tamaño de la pizza y masa
        mostrarTamano.text = traerTamanoEnIngredientes
        mostrarMasa.text = traerMasaEnIngredientes
        mostrarQueso.text = traerQuesoEnIngredientes
       
    }

    @IBAction func continuarIngredientes(sender: AnyObject) {
        
//        if ingrediente == "" || contador == 0{
//            showErrorAlertMessage("Por favor selecciona al menos un Ingrediente para tu Pizza")
//        }
//        else{
            print("Masa tipo \(ingrediente)")
            enviarIngrediente()
        
//        }
    }
    
    func enviarIngrediente() -> String{
        print("Continuara con el Ingrediente: \(ingrediente)")
        return ingrediente
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Prepara Ingrediente
        let ingredienteTipo = enviarIngrediente()
        let sigVista = segue.destinationViewController as! VistaConfirmacion // obtiene referencia a la siguiente vista
        sigVista.traerIngredientesEnConfirmar = ingredienteTipo // se calcula el valor y sea enviado al objeto de la segunda pantalla
        
        // Prepara Tamaño
        let tamañoTipo = segue.destinationViewController as! VistaConfirmacion // obtiene referencia a la siguiente vista
        tamañoTipo.traerTamanoEnConfirmar = traerTamanoEnIngredientes
        
        // Prepara Masa
        let masaTipo = segue.destinationViewController as! VistaConfirmacion // obtiene referencia a la siguiente vista
        masaTipo.traerMasaEnConfirmar = traerMasaEnIngredientes
        
        // Prepara Queso
        let quesoTipo = segue.destinationViewController as! VistaConfirmacion // obtiene referencia a la siguiente vista
        quesoTipo.traerQuesoEnConfirmar = traerQuesoEnIngredientes
    }

    
    @IBAction func switchJamon(sender: AnyObject) {
        ingrediente += "Jamón "
        print (ingrediente)
    }
    @IBAction func switchPepperoni(sender: AnyObject) {
        ingrediente += "Pepperoni "
        print (ingrediente)
    }
    @IBAction func switchPavo(sender: AnyObject) {
        ingrediente += "Pavo "
        print (ingrediente)
    }
    @IBAction func switchPollo(sender: AnyObject) {
        ingrediente += "Pollo "
        print (ingrediente)
    }
    @IBAction func switchPina(sender: AnyObject) {
        ingrediente += "Piña "
        print (ingrediente)
    }
    @IBAction func switchMaiz(sender: AnyObject) {
        ingrediente += "Maíz "
        print (ingrediente)
    }
    @IBAction func switchChampinon(sender: AnyObject) {
        ingrediente += "Champiñón "
        print (ingrediente)
    }
    @IBAction func switchCebolla(sender: AnyObject) {
        ingrediente += "Cebolla "
        print (ingrediente)
    }
    @IBAction func switchTomate(sender: AnyObject) {
        ingrediente += "Tomate "
        print (ingrediente)
    }
    

    
}


