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
    var colors: [UIColor] = [.blue, .red, .green, .purple]
    
    override func draw(_ rect: CGRect){
        
        let order = 30
        
        for (index, color) in colors.enumerated(){
            if(color == .brown){
                let path = UIBezierPath()
                
                path.move(to: CGPoint(x: index * order, y: 0))
                path.addLine(to: CGPoint(x: index * order + order, y: 200))
                path.close()
                
                color.setStroke()
                path.stroke()
            }
        }
    }
    
    func addlines(){
        self.colors.append(.brown)
        self.setNeedsDisplay()
    }
}
