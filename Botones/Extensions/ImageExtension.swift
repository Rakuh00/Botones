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

//Create style for UIimageView
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

//Create Image with color background
extension UIImage {
    class func image(with color: UIColor) -> UIImage {
        let rect = CGRect(origin: CGPoint(x: 0, y:0), size: CGSize(width: 1, height: 1))
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()!
        
        context.setFillColor(color.cgColor)
        context.fill(rect)
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image!
    }
}
