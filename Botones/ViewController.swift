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
    @IBOutlet var heightImageViewConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let colors = ColorsExtensions ()
        self.view.backgroundColor = colors.backgroundColor
        
        imageViewHome.image = UIImage(named: "blueBackground.jpg")
        
        imageViewHome.getStyle()
        buttonOne.getStyle()
        buttonTwo.getStyle()
        
        buttonOne.setTitle("Ampliar", for: UIControlState.normal)
        buttonTwo.setTitle("Reducir", for: UIControlState.normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: Actions Buttons
    @IBAction func buttonOneAction(_ sender: Any) {
        
        let animations = ImageViewAnimations()
        
        guard heightImageViewConstraint.constant < 400 else {
            return
        }
   
        animations.scaleView(imageView: imageViewHome, withLayout: heightImageViewConstraint)
        
        UIView.animate(withDuration: 0.2, animations: {
            
            self.view.layoutIfNeeded()
            
        }, completion: nil)
    }
    
    @IBAction func buttonTwoAction(_ sender: Any) {
        
        let animations = ImageViewAnimations()
        
        guard heightImageViewConstraint.constant > 200 else {
            return
        }
        
        animations.scaleViewMin(imageView: imageViewHome, withLayout: heightImageViewConstraint)

        UIView.animate(withDuration: 0.2, animations: {
            
            self.view.layoutIfNeeded()
            
        }, completion: nil)
    }
}

