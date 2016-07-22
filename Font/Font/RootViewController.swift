//
//  RootViewController.swift
//  Font
//
//  Created by J HD on 16/7/21.
//  Copyright © 2016年 J HD. All rights reserved.
//

import UIKit
import SnapKit

class RootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.whiteColor()
        
        let button = UIButton()
        button.setTitle("List", forState: .Normal)
        button.backgroundColor = UIColor(254,91,94)
        button.layer.cornerRadius = 40
        button.clipsToBounds = true
        button.addTarget(self, action: #selector(RootViewController.goList), forControlEvents: .TouchUpInside)
        view.addSubview(button)
        button.snp_makeConstraints { (make) in
            make.center.equalTo(view)
            make.height.equalTo(80)
            make.width.equalTo(80)
        }
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    func goList(){
        navigationController?.pushViewController(ListTableViewController(), animated: true)
    }

}
