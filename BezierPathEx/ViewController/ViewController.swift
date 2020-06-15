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
        
        // imageViewを作り、
        let uiiv = UIImageView(image: UIImage(systemName: "person.crop.circle"))
        uiiv.frame = CGRect(x: 100, y: 100, width: 200, height: 200)
        uiiv.isUserInteractionEnabled = true // なくてもいい?
        
        // Gesture Recognizerを作って
        let panGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(onPanuiiv(sender:)))
        panGestureRecognizer.minimumNumberOfTouches = 1
        panGestureRecognizer.maximumNumberOfTouches = 1
        
        // uiiに貼り付けてビューに追加
        uiiv.addGestureRecognizer(panGestureRecognizer)
        self.contentView.addSubview(uiiv)
        
        self.scrollView.delegate = self
        self.scrollView.bounces = true
        self.scrollView.contentMode = .center
        self.scrollView.maximumZoomScale = 8.0
        self.scrollView.minimumZoomScale = 1.0
        
        self.scrollView.panGestureRecognizer.minimumNumberOfTouches = 2
    }
    
    // PanGesture認識時
    @objc func onPanuiiv(sender: UIPanGestureRecognizer){
        // 移動量を取得し、viewを移動
        let moved = sender.translation(in: self.contentView)
        if let target = sender.view {
            
            let moveto = CGPoint(x: target.center.x + moved.x, y: target.center.y + moved.y)
            
            target.center.x = moveto.x
            target.center.y = moveto.y
        }
        
        // pangestureは継続的に移動量を検出し続けるので、移動処理を挟むたびにリセットしてやる
        sender.setTranslation(CGPoint(x: 0, y: 0), in: self.contentView)
    }

    // 右上の汎用ボタン
    @IBAction func onTapButton(_ sender: Any) {
        self.contentView.addlines()
    }
    
    // contentView(CustomView)内のtapgesture
    @IBAction func onTapContentView(_ sender: UITapGestureRecognizer) {
        print(sender.state)
        print(sender.location(in: self.contentView))
        // in: self.viewにすると対象変えられる すげえ
        
    }
    
}


