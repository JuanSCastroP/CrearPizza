//
//  VistaConfirmacion.swift
//  CrearPizza
//
//  Created by mac on 04/03/16.
//  Copyright © 2016 Juan Sebastian Castro. All rights reserved.
//

import UIKit

class VistaConfirmacion: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func showErrorAlertMessage(mensaje: String) { // para mostrar mensaje de error
        let alertController = UIAlertController(title: "ATENCIÓN!!", message: mensaje, preferredStyle: .Alert)
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
    
    
    @IBOutlet weak var mostrarTamano: UILabel!
    @IBOutlet weak var mostrarMasa: UILabel!
    @IBOutlet weak var mostrarQueso: UILabel!
    @IBOutlet weak var mostrarIngredientes: UITextView!

    var traerTamanoEnConfirmar : String = ""
    var traerMasaEnConfirmar : String = ""
    var traerQuesoEnConfirmar : String = ""
    var traerIngredientesEnConfirmar : String = ""
    
    override func viewWillAppear(animated: Bool) {// trae todo lo seleccionado en patallas anteriores
        mostrarTamano.text = traerTamanoEnConfirmar
        mostrarMasa.text = traerMasaEnConfirmar
        mostrarQueso.text = traerQuesoEnConfirmar
        mostrarIngredientes.text = traerIngredientesEnConfirmar
        
    }
    
    @IBAction func confirmarOrden(sender: AnyObject) {
        showErrorAlertMessage("Tu Pizza ha sido confirmada. En minutos podrás degustarla!")
        
    }

}
