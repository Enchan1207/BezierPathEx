//
//  ViewController.swift
//  BezierPathEx
//
//  Created by EnchantCode on 2020/06/14.
//  Copyright © 2020 EnchantCode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentView: CustomView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let uiiv = UIImageView(image: UIImage(systemName: "person.crop.circle"))
        self.contentView.addSubview(uiiv)
        uiiv.frame = CGRect(x: 100, y: 100, width: 200, height: 200)
        
        self.scrollView.delegate = self
        self.scrollView.bounces = true
        self.scrollView.contentMode = .center
        self.scrollView.maximumZoomScale = 8.0
        self.scrollView.minimumZoomScale = 1.0
        
    }

    @IBAction func onTapButton(_ sender: Any) {
        self.contentView.addlines()
    }
}


