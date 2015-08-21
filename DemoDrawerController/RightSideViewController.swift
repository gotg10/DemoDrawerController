//
//  RightSideViewController.swift
//  DemoDrawerController
//
//  Created by Jumpei Katayama on 8/20/15.
//  Copyright © 2015 Jumpei Katayama. All rights reserved.
//

import UIKit

class RightSideViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Hide empty cells
        tableView.tableFooterView = UIView(frame: CGRectZero)
        tableView.backgroundColor = UIColor.whiteColor()
        tableView.alwaysBounceVertical = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension RightSideViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("right cell", forIndexPath: indexPath)
        cell.textLabel?.text = "hello"
        return cell
    }
    
}