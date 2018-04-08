//
//  ViewController.swift
//  flowerCollection
//
//  Created by Chiemi Sugiura on 2017/07/01.
//  Copyright © 2017年 abc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // 画面とプログラムを繋げる変数宣言を行う
    @IBOutlet weak var flowerLabel: UILabel!
    @IBOutlet weak var flowerImageView: UIImageView!
    
    // ボタンが押下された回数を格納
    var count: Int = 0
    
    // 花の名前を配列に格納
    let flowerName: [String] = ["バラ", "ネモフィラ", "ヒマワリ", "ユリ", "チューリップ"]

    // 表示させる色を配列に格納
    let colors: [UIColor] = [UIColor.red, UIColor.blue, UIColor.yellow, UIColor.white, UIColor.orange]

    // 画像名を配列に格納
    let imageNames: [String] = ["rose", "nemo", "himawari", "yuri", "tulip"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    // 蝶々のボタン押下時イベント
    @IBAction func pushButton(_ sender: Any) {
        count += 1
        if count == flowerName.count {
            count = 0
        }
        
        flowerLabel.text = flowerName[count]
        flowerLabel.textColor = colors[count]
        flowerImageView.image = UIImage(named: imageNames[count])
    }
    
    @IBAction func swipe(_ sender: Any) {
        
        count += 1
        if count == flowerName.count {
            count = 0
        }
        
        flowerLabel.text = flowerName[count]
        flowerLabel.textColor = colors[count]
        flowerImageView.image = UIImage(named: imageNames[count])
    }
    
    
}

