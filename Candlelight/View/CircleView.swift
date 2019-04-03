//
//  CircleView.swift
//  Candlelight
//
//  Created by Laurence Wingo on 4/3/19.
//  Copyright © 2019 Cosmic Arrows, LLC. All rights reserved.
//

import UIKit

class CircleView: UIView {
    @IBInspectable var borderColor: UIColor?{
        didSet {
            setupView()
        }
    }
    
    override func awakeFromNib() {
        setupView()
    }

    func setupView(){
        self.layer.cornerRadius = self.frame.width / 2
        self.layer.borderWidth = 1.5
        self.layer.borderColor = borderColor?.cgColor
    }

}
