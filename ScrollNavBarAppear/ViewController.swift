//
//  ViewController.swift
//  ScrollNavBarAppear
//
//  Created by Alex S on 10/2/16.
//  Copyright © 2016 swifttest. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UIScrollViewDelegate {
    
    let cellIdentifier = "cellIdentifier";

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.dataSource = self;
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(self.cellIdentifier, forIndexPath: indexPath);
        cell.textLabel?.text = String(indexPath.row);
        
        return cell;
    }
}

