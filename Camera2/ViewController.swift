//
//  ViewController.swift
//  Camera2
//
//  Created by Yusuke Nakane on 2018/11/18.
//  Copyright © 2018 usayama. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var pictureImage: UIImageView!
    
    // カメラを起動するをタップすると実行
    @IBAction func cameraButtonAction(_ sender: UIButton) {
        // カメラが利用可能かチェック
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            print("カメラは利用できます")
        } else {
            print("カメラは利用できません")
        }
    }
    
    // SNSに投稿するをタップすると実行
    @IBAction func SNSButtonAction(_ sender: UIButton) {
    }
    
}

