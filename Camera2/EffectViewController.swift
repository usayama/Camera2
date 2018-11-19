//
//  EffectViewController.swift
//  Camera2
//
//  Created by Yusuke Nakane on 2018/11/18.
//  Copyright © 2018 usayama. All rights reserved.
//

import UIKit

class EffectViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var effectImage: UIImageView!
    
    // エフェクト前画像
    // 前の画面より画像を設定
    var originalImage: UIImage?
    
    @IBAction func effectButtonAction(_ sender: UIButton) {
    }
    
    @IBAction func shareButtonAction(_ sender: UIButton) {
    }
    
    @IBAction func closeButtonAction(_ sender: UIButton) {
    }
}
