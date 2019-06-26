//
//  ViewController.swift
//  MyFirstDemo
//
//  Created by Gakkiiiiii on 2019/6/21.
//  Copyright © 2019 Gakkiiiiii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        let QAQ = UILabel(frame: CGRect(x: 30,y: 80,width: 310,height: 60))
        QAQ.textColor = UIColor.red
        QAQ.font = UIFont.systemFont(ofSize: 15)
        QAQ.text = "QAQ"
        self.view.addSubview(QAQ)
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

