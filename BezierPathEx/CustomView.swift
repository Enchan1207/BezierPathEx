//
//  CustomView.swift
//  BezierPathEx
//
//  Created by EnchantCode on 2020/06/14.
//  Copyright © 2020 EnchantCode. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class CustomView: UIView {
    override func draw(_ rect: CGRect){
        
        let colors: [UIColor] = [.blue, .red, .green, .purple, .brown]
        let order = 30
        
        for (index, color) in colors.enumerated(){
            let path = UIBezierPath()
            
            path.move(to: CGPoint(x: index * order, y: 0))
            path.addLine(to: CGPoint(x: index * order + order, y: 200))
            path.close()
            
            color.setStroke()
            path.stroke()
        }
    }
}
