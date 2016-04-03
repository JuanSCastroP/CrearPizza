//
//  VistaSelecionaMasa.swift
//  CrearPizza
//
//  Created by mac on 04/03/16.
//  Copyright © 2016 Juan Sebastian Castro. All rights reserved.
//

import UIKit

class VistaSelecionaMasa: UIViewController {
  
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
    
   
    var traerTamanoPizza : String = ""
    var tipoMasa : String = ""
    
    @IBOutlet weak var mostrarTamano2: UILabel! // label para mostrar tamaño
    
    override func viewWillAppear(animated: Bool) {// trae el tamaño de la pizza
        mostrarTamano2.text = traerTamanoPizza
    }
  
    
    
    
    
 /*
    @IBAction func masaDelgada(sender: AnyObject) {
        tipoMasa = "Delgada"
        print("Tipo de masa: \(tipoMasa)")
    }
    
    @IBAction func masaCrujiente(sender: AnyObject) {
        tipoMasa = "Crujiente"
        print("Tipo de masa: \(tipoMasa)")
    }
    
   
    @IBAction func masaGruesa(sender: AnyObject) {
        tipoMasa = "Gruesa"
        print("Tipo de masa: \(tipoMasa)")
    }
    
    */
    


}
