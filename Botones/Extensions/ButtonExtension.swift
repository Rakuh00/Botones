//
//  ButtonExtension.swift
//  Botones
//
//  Created by Raul Fernandez on 7/4/18.
//  Copyright © 2018 Raul Fernandez. All rights reserved.
//

import UIKit

class ButtonExtension: NSObject {

}

extension UIButton {
    
    func getStyle()  {
        
        let button = self
        let colors = ColorsExtensions()
        
        button.backgroundColor = colors.backgroundColor
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        
        button.layer.cornerRadius = 4.0
        button.layer.borderWidth = 1.0
        button.layer.borderColor = colors.lightColor.cgColor
        button.layer.masksToBounds = true
        
    }
    
}
