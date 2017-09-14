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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //180度のラジアンを求める
        let angle:CGFloat = CGFloat((180.0 * CGFloat.pi) / 180.0)
        //イメージビューの回転
        computerImageView.transform = CGAffineTransform(rotationAngle: angle)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

