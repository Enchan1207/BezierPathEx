//
//  GestureRecognizerDelegate.swift
//  BezierPathEx
//
//  Created by EnchantCode on 2020/06/15.
//  Copyright © 2020 EnchantCode. All rights reserved.
//

import Foundation
import UIKit

extension ViewController: UIGestureRecognizerDelegate {
    // 複数のGesture Recognizerに反応させる
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }
}
