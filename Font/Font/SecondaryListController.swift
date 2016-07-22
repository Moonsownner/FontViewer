//
//  SecondaryListController.swift
//  Font
//
//  Created by J HD on 16/7/21.
//  Copyright © 2016年 J HD. All rights reserved.
//

import UIKit

class SecondaryListController: UITableViewController {
    
    private let cellId = "Cell"
    
    private let type: String
    var data: [String]
    
    init(type: String){
        self.type = type
        data = UIFont.fontNamesForFamilyName(type)
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = type
        tableView.registerClass(Cell.self, forCellReuseIdentifier: cellId)
        
    }

}

extension SecondaryListController{
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if data.count == 0{
            let label = UILabel()
            label.textAlignment = .Center
            label.text = "No sub fonts."
            label.textColor = UIColor(254,91,94)
            label.font = UIFont.systemFontOfSize(20)
            tableView.backgroundView = label
        }
        else{
            tableView.backgroundView = nil
        }
        return data.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellId, forIndexPath: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        cell.textLabel?.font = UIFont(name: data[indexPath.row], size: 20)
        cell.detailTextLabel?.text = "测试一段字1234567890"
        cell.detailTextLabel?.font = UIFont(name: data[indexPath.row], size: 20)
        return cell
    }
    
}

extension SecondaryListController{
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 80
    }
    
    override func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return CGFloat.min
    }
    
}
