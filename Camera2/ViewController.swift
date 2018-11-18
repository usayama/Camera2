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
            // (1) UIImagePickerControllerのインスタンスを作成
            let imagePickerController = UIImagePickerController()
            // (2) sourceType に camera を設定
            imagePickerController.sourceType = .camera
            // (3) delegate設置
            imagePickerController.delegate = self
            // (4) モーダルビューで表示
            present(imagePickerController, animated: true, completion: nil)
        } else {
            print("カメラは利用できません")
        }
    }
    
    // SNSに投稿するをタップすると実行
    @IBAction func SNSButtonAction(_ sender: UIButton) {
    }
    
}

