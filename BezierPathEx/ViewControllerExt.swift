//
//  ViewControllerExt.swift
//  BezierPathEx
//
//  Created by EnchantCode on 2020/06/14.
//  Copyright © 2020 EnchantCode. All rights reserved.
//

import Foundation
import UIKit

extension ViewController: UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return self.contentView
    }
}
