//
//  Cell.swift
//  Font
//
//  Created by J HD on 16/7/21.
//  Copyright © 2016年 J HD. All rights reserved.
//

import UIKit

class Cell: UITableViewCell{
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: .Subtitle, reuseIdentifier: reuseIdentifier)
        
        accessoryType = .DisclosureIndicator
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}