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
        // エフェクト前画像をアンラップしてエフェクト用画像として取り出す
        if let image = originalImage {
            // フィルター名を指定
            let filterName = "CIPhotoEffectMono"
            // もともとの画像の回転角度を取得
            let rotate = image.imageOrientation
            // UIImage形式の画像をCIImage形式の画像に変換
            let inputImage = CIImage(image: image)
            // フィルターの種類を引数で指定された種類をしてCIFilterのインスタンスを取得
            guard let effectFilter = CIFilter(name: filterName) else { return }
            // エフェクトのパラメータを初期化
            effectFilter.setDefaults()
            // インスタンスにエフェクトする元画像を設定
            effectFilter.setValue(inputImage, forKey: kCIInputImageKey)
            // エフェクト後のCIImage形式の画像を取り出す
            guard let outoutImage = effectFilter.outputImage else { return }
            // CIContextのインスタンスを取得
            let ciContext = CIContext(options: nil)
            // エフェクト後の画像をCIContext上に描画し、結果をcgImageとしてCGImage形式の画像を取得
            guard let cgImage = ciContext.createCGImage(outoutImage, from: outoutImage.extent) else { return }
            // エフェクト後の画像をCGImage形式からUIImage形式に変更、その際に回転角度を指定、そしてImageViewに表示
            effectImage.image = UIImage(cgImage: cgImage, scale: 1.0, orientation: rotate)
        }
    }
    
    @IBAction func shareButtonAction(_ sender: UIButton) {
        // 表示画像をアンラップしてシェア画像を取り出し
        if let shareImage = effectImage.image {
            // UIActivityViewControllerに渡す配列を作成
            let shareItems = [shareImage]
            // UIActivityViewControllerにシェア画像を渡す
            let controller = UIActivityViewController(activityItems: shareItems, applicationActivities: nil)
            // iPadで落ちてしまう対策
            controller.popoverPresentationController?.sourceView = view
            // UIActivityViewControllerを表示
            present(controller, animated: true, completion: nil)
        }
    }
    
    @IBAction func closeButtonAction(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
