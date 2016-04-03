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
    
    var ingrediente : String = ""
    var traerTamanoEnIngredientes : String = ""
    var traerMasaEnIngredientes : String = ""
    var traerQuesoEnIngredientes : String = ""
    
    override func viewWillAppear(animated: Bool) {// trae el tamaño de la pizza y masa
        mostrarTamano.text = traerTamanoEnIngredientes
        mostrarMasa.text = traerMasaEnIngredientes
        mostrarQueso.text = traerQuesoEnIngredientes

     

        
        
    }
    
  //  showErrorAlertMessage("Por favor selecciona Ingrediente para tu Pizza")
        

    func enviarIngrediente() -> String{
        print("Continuara con el Ingrediente: \(ingrediente)")
        return ingrediente
    }
    

}
