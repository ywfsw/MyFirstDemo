//
//  ListViewController.swift
//  MyFirstDemo
//
//  Created by Gakkiiiiii on 2019/6/27.
//  Copyright © 2019 Gakkiiiiii. All rights reserved.
//

import UIKit
import SnapKit

class ListViewController: UIViewController {

    override func viewDidLoad() {
        let imageView = UIImageView()
        let image  = UIImage(named: "鬼刀3")
        imageView.image = image
        self.view.addSubview(imageView)
        imageView.snp.makeConstraints { (maker) in
            maker.centerX.centerY.equalToSuperview()
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
}
