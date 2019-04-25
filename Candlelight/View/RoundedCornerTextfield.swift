//
//  RoundedCornerTextfield.swift
//  Candlelight
//
//  Created by Laurence Wingo on 4/14/19.
//  Copyright © 2019 Cosmic Arrows, LLC. All rights reserved.
//

import UIKit

class RoundedCornerTextfield: UITextField {
    
    var textRectOffset: CGFloat = 20
    
    override func awakeFromNib() {
        setupView()
    }

    func setupView(){
        self.layer.cornerRadius = self.frame.height / 2
        self.clipsToBounds = true
        
    }
    
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect.init(x: 0 + textRectOffset, y: 0 + (textRectOffset / 2), width: self.frame.width - textRectOffset, height: self.frame.height + textRectOffset)
    }
 
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect.init(x: 0 + textRectOffset, y: 0 + (textRectOffset / 2), width: self.frame.width - textRectOffset, height: self.frame.height + textRectOffset)
    }
 
}
