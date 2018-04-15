//
//  ImageViewAnimations.swift
//  Botones
//
//  Created by Raul Fernandez on 8/4/18.
//  Copyright © 2018 Raul Fernandez. All rights reserved.
//

import UIKit

class ImageViewAnimations: NSObject {
    
    func scaleView(imageView: UIImageView, withLayout: NSLayoutConstraint) {

        withLayout.constant += 100
        imageView.setNeedsUpdateConstraints()
        
    }
    
    func scaleViewMin(imageView: UIImageView, withLayout: NSLayoutConstraint) {
        
        guard imageView.frame.size.width > UIScreen.main.bounds.width / 2 else {
            return
        }
    
        withLayout.constant -= 100
        imageView.setNeedsUpdateConstraints()

    }
}
