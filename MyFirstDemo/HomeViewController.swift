//
//  HomeViewController.swift
//  MyFirstDemo
//
//  Created by Gakkiiiiii on 2019/6/27.
//  Copyright © 2019 Gakkiiiiii. All rights reserved.
//

import UIKit
import SnapKit

class HomeViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {


    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tableView = UITableView(frame: view.bounds, style: .grouped)
        tableView.backgroundColor = UIColor.white;
        tableView.dataSource = self
        tableView.delegate = self
        view.addSubview(tableView)

        tableView.reloadData()
        // Do any additional setup after loading the view.
    }
    
    
    ///cell数量
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    ///cell重载
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let dic = dataSource[indexPath.row] as Dictionary
        let cellid = "CellID"
        var cell = tableView.dequeueReusableCell(withIdentifier: cellid) as? HomeTableViewCell
        if cell==nil {
            cell = HomeTableViewCell(style: .subtitle, reuseIdentifier: "selectCell")
            cell?.selectionStyle = .none
        }
        //let dict = dataSource[indexPath.row] as Dictionary
//        cell?.tableImageView.image = UIImage(named: dict["icon"]!)
        cell?.tableLabel.text = dic["text"]
        cell?.tableLabel2.text = dic.keys.first
        if dic.values.first == "select" {
            
            cell?.accessoryType = .checkmark
        } else {
            cell?.accessoryType = .none
        }

        return cell!
        
        
     }
    ///cell高度
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 74.0
    }
    ///cell和顶部的距离
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0
    }
    // 选中cell后执行此方法
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("点击第",indexPath.row,"行")
        var i = 0
        for var dict in dataSource {
            
            if i == indexPath.row {
                dict[dict.keys.first!] = "select"
                dataSource[i] = dict
            }
//单选
//            else {
//                dict[dict.keys.first!] = "no"
//                dataSource[i] = dict
//            }
            i = i+1
        }
        tableView.reloadData()
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
