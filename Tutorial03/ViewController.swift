//
//  ViewController.swift
//  Tutorial03
//
//  Created by Kaito Hattori on 2021/03/03.
//

import UIKit

class ViewController: UIViewController {
    
    // 画像を表示するUIImageView。Storyboardと連携している。
    @IBOutlet weak var hogeImageView: UIImageView!
    // 現在表示している画像が何番目なのかを保持する変数
    var index: Int = 0
    // Assets.xcassetsの中に入れた画像を配列に入れる。
    var imageArray: [UIImage] = [
        UIImage(named: "image0")!,
        UIImage(named: "image1")!,
        UIImage(named: "image2")!,
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // imageArrayのindex番目の画像をhogeImageViewの画像として表示する。
        hogeImageView.image = imageArray[index]
    }

    // ボタンが押されたときに呼び出される。Storyboardと連携している。
    @IBAction func onClickChangeImage(_ sender: Any) {
        // indexを+1する。
        index = index + 1
        // もし、indexがimageArrayの大きさより大きければ、indexを0にする。
        // これは、imageArrayが３つの要素を持っているときに、imageArray[3]としてしまうと、エラーになるため。
        // （配列は、０番目から数えるため、３つの要素を持っている配列の最後の値の住所は２です。）
        if index == imageArray.count {
            index = 0
        }
        // imageArrayのindex番目の画像をhogeImageViewの画像として表示する。
        hogeImageView.image = imageArray[index]
    }
}

