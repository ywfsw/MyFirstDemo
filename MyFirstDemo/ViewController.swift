//
//  ViewController.swift
//  MyFirstDemo
//
//  Created by Gakkiiiiii on 2019/6/21.
//  Copyright © 2019 Gakkiiiiii. All rights reserved.
//

import UIKit
import SnapKit
import SDWebImage
class ViewController: UIViewController {

    override func viewDidLoad() {
        let QAQ = UILabel()
        QAQ.textColor = UIColor.red
        QAQ.font = UIFont.systemFont(ofSize: 15)
        QAQ.text = "QAQ"
        self.view.addSubview(QAQ)
        QAQ.snp.makeConstraints { (maker) in
            maker.centerX.centerY.equalToSuperview()
        }
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

