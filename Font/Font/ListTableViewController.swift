//
//  ListTableViewController.swift
//  Font
//
//  Created by J HD on 16/7/21.
//  Copyright © 2016年 J HD. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {
    
    private let cellId = "cell"
    
    var data = UIFont.familyNames()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "List"
        
        tableView.registerClass(Cell.self, forCellReuseIdentifier: cellId)
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
}

extension ListTableViewController{
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
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

extension ListTableViewController{
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 80
    }
    
    override func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return CGFloat.min
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        navigationController?.pushViewController(SecondaryListController(type: data[indexPath.row]), animated: true)
    }
    
}