//
//  ViewController.swift
//  sampleOmikuji
//
//  Created by 小林由知 on 2017/10/27.
//  Copyright © 2017年 Yoshitomo Kobatashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var omikuji = ["『大凶」残念。ただの性犯罪者よ。。。"
        ,"『凶」惜しい！まだ営業前だよ！もう一回！！"
        ,"『末吉』おブスのキャサリンね"
        ,"『小吉』安定感抜群のセバ子"
        ,"『中吉』ママのお出ましよ！"
        ,"『吉』可愛さNo.1！コバコ！"
        ,"『大吉』やったね！全員集合！大当たり！！！"]
    
    
    @IBOutlet weak var myImageView: UIImageView!
    
    
    //占いボタンを押された時に発動
    @IBAction func tapUranai(_ sender: UIButton) {
    
        //占いの結果をランダムに選ぶための数字を作成
        //（7で割っているので、余りが0から6しか出ない）
        let r = Int(arc4random()) % omikuji.count
        //print("今日の占い:\(omikuji[r])")
        
        //部品となるアラート作成
        let alert = UIAlertController(
            title: "今日の運勢", message: "\(omikuji[r])！", preferredStyle: .alert)
        
        //アラートの表示
        present(alert, animated: true, completion: {() -> Void in print("アラートが表示されました。")})
        
        //アラートにOKボタンを追加
        alert.addAction(UIAlertAction(
            title: "OK", style: .default, handler: {action in self.myImageView.image = UIImage(named: "okama\(r).JPG" ); print("okama\(r).JPGが押されました")
            }
        ))
    }

    //TODO:おみくじ結果をアラートで表示。
    //TODO:アラートにOKボタンをつけて、OKを押した後に画像が出る
    //TODO:完成後mGithubにPushして提出。
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

