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

        // 画面遷移時に元の画像を表示
        effectImage.image = originalImage
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
        self.dismiss(animated: true, completion: nil)
    }
}
