//
//  HomeTableViewCell.swift
//  MyFirstDemo
//
//  Created by Gakkiiiiii on 2019/6/27.
//  Copyright © 2019 Gakkiiiiii. All rights reserved.
//

import UIKit
import SnapKit

class HomeTableViewCell: UITableViewCell {
    
    
    let wight = S_Width
    var tableImageView = UIImageView()
    var tableLabel = UILabel()
    var tableLabel2 = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        tableImageView = UIImageView(frame: CGRect(x: 20, y: 10, width: 10, height: 10))
        tableImageView.layer.masksToBounds = true
        tableImageView.layer.cornerRadius = 22.0
        tableLabel = UILabel(frame: CGRect(x: 50, y: 22, width: 100, height: 20))
        tableLabel.textColor = UIColor.black
        tableLabel.font = UIFont.systemFont(ofSize: 15)
        tableLabel.textAlignment = .left
        tableLabel2 = UILabel(frame: CGRect(x: 250, y: 10, width: 100, height: 10))
        tableLabel2.textColor = UIColor.black
        tableLabel2.font = UIFont.systemFont(ofSize: 15)
        tableLabel2.textAlignment = .right
        contentView.addSubview(tableImageView)
        contentView.addSubview(tableLabel)
        //contentView.addSubview(tableLabel2)
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
}
