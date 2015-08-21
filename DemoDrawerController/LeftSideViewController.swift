//
//  LeftSideViewController.swift
//  DemoDrawerController
//
//  Created by Jumpei Katayama on 8/20/15.
//  Copyright © 2015 Jumpei Katayama. All rights reserved.
//

import UIKit

class LeftSideViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Hide empty cells
        tableView.tableFooterView = UIView(frame: CGRectZero)
        tableView.backgroundColor = UIColor.whiteColor()
        tableView.alwaysBounceVertical = false
    }


}

extension LeftSideViewController: UITableViewDataSource, UITableViewDelegate {
    @available(iOS 2.0, *)
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    
    @available(iOS 2.0, *)
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        cell.textLabel?.text = "hello"
        return cell
    }
}
