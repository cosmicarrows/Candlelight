//
//  CenterVCDelegate.swift
//  Candlelight
//
//  Created by Laurence Wingo on 4/6/19.
//  Copyright © 2019 Cosmic Arrows, LLC. All rights reserved.
//

import UIKit

protocol CenterVCDelegate {
    func toggleLeftPanel()
    func addLeftPanelViewController()
    func animateLeftPanel(shouldExpand: Bool)
}

