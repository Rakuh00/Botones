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
    @IBOutlet var imageViewTabBar: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        //Tabbar transparent
        //Image with clear color
        let backgroundImage = UIImage.image(with: .clear)
        //Add image to tabBar
        self.tabBarController?.tabBar.backgroundImage = backgroundImage
       // self.tabBarController?.tabBar.backgroundImage = UIImage.init(named: "pruebaTabBar.png")
        //Add clear image to shadow tabBar
        self.tabBarController?.tabBar.shadowImage = backgroundImage
        
        //Add to Image below tabBar a custom image
        let tabBarImage = UIImage(named: "pruebaTab.png")
      //  tabBarImage?.resizableImage(withCapInsets: .init(top: 0.0, left: 2.0, bottom: 2.0, right: 2.0))
        imageViewTabBar.image = tabBarImage
        
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

