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
        
        button.backgroundColor = UIColor.lightGray
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        
        button.layer.cornerRadius = 4.0
        button.layer.borderWidth = 1.0
        button.layer.borderColor = UIColor.gray.cgColor
        button.layer.masksToBounds = true
        
    }
    
}
