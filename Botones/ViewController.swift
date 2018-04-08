//
//  ViewController.swift
//  Botones
//
//  Created by Raul Fernandez on 7/4/18.
//  Copyright © 2018 Raul Fernandez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var buttonOne: UIButton!
    @IBOutlet var buttonTwo: UIButton!
    @IBOutlet var imageViewHome: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let colors = ColorsExtensions ()
        
        self.view.backgroundColor = colors.backgroundColor
        
        imageViewHome.getStyle()
        
        buttonOne.getStyle()
        buttonTwo.getStyle()
        
        buttonOne.setTitle("Aceptar", for: UIControlState.normal)
        buttonTwo.setTitle("Cancelar", for: UIControlState.normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonOneAction(_ sender: Any) {
   
    }
    
    @IBAction func buttonTwoAction(_ sender: Any) {

    }
}

