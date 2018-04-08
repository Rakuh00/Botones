//
//  ImageExtension.swift
//  Botones
//
//  Created by Raul Fernandez on 8/4/18.
//  Copyright © 2018 Raul Fernandez. All rights reserved.
//

import UIKit

class ImageExtension: NSObject {

}

extension UIImageView {
    
    func getStyle()  {
        
        let imageView = self
        let colors = ColorsExtensions()
        imageView.backgroundColor = colors.backgroundColor
        imageView.layer.borderWidth = 1.0
        imageView.layer.borderColor = colors.lightColor.cgColor
        imageView.layer.cornerRadius = 4.0
        imageView.layer.masksToBounds = true
        
    }
    
}
