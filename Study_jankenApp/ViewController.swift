//
//  ViewController.swift
//  Study_jankenApp
//
//  Created by Daichi Hayashi on 2017/09/14.
//  Copyright © 2017年 Daichi Hayashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var computerImageView: UIImageView!
    @IBOutlet weak var playerImageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //180度のラジアンを求める
        let angle:CGFloat = CGFloat((180.0 * CGFloat.pi) / 180.0)
        //イメージビューの回転
        computerImageView.transform = CGAffineTransform(rotationAngle: angle)
    }
    
    @IBAction func tapStart() {
        // イメージビューにグーを表示する
        computerImageView.image = UIImage(named: "gu.jpg")
        playerImageView.image = UIImage(named: "gu.jpg")
        // ラベルに「じゃんけん！」と表示する
        messageLabel.text = "じゃんけん！"
    }
    @IBAction func tapGu() {
        playerImageView.image = UIImage(named: "gu.jpg")
        doComputer(0)
    }
    @IBAction func tapChoki() {
        playerImageView.image = UIImage(named: "choki.jpg")
        doComputer(1)
    }
    @IBAction func tapPa() {
        playerImageView.image = UIImage(named: "pa.jpg")
        doComputer(2)
    }
    
    func doComputer(_ player:Int) {
        // コンピュータの手を0から2に割り当てて求める
        let computer = arc4random_uniform(3)
        // 勝敗表示用の文字列
        var msg = ""
        
        switch computer {
        case 0:
            // グー
            computerImageView.image = UIImage(named: "gu.jpg")
            switch player {
            case 0:
                //グー
                msg = "あいこ！"
            case 1:
                //チョキ
                msg = "負け！"
            case 2:
                //パー
                msg = "勝ち！"
            default:
                break
            }
        case 1:
            // チョキ
            computerImageView.image = UIImage(named: "choki.jpg")
            switch player {
            case 0:
                //グー
                msg = "勝ち！"
            case 1:
                //チョキ
                msg = "あいこ！"
            case 2:
                //パー
                msg = "負け！"
            default:
                break
            }
        case 2:
            // パー
            computerImageView.image = UIImage(named: "pa.jpg")
            switch player {
            case 0:
                //グー
                msg = "負け！"
            case 1:
                //チョキ
                msg = "勝ち！"
            case 2:
                //パー
                msg = "あいこ！"
            default:
                break
            }
        default:
            break
        }
        
        messageLabel.text = msg
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

