//
//  ViewController.swift
//  DemoDrawerController
//
//  Created by Jumpei Katayama on 8/19/15.
//  Copyright © 2015 Jumpei Katayama. All rights reserved.
//

import UIKit
import DrawerController


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupLeftMenuButton()
        setupRightMenuButton()
        // Do any additional setup after loading the view, typically from a nib.
    }


    
    func setupLeftMenuButton() {
        let leftDrawerButton: DrawerBarButtonItem = DrawerBarButtonItem(target: self, action: "leftDrawerButtonPress:")
        navigationItem.setLeftBarButtonItem(leftDrawerButton, animated: true)
    }
    func setupRightMenuButton() {
        let rightDrawerButton: DrawerBarButtonItem = DrawerBarButtonItem(target: self, action: "rightDrawerButtonPress:")
        navigationItem.setRightBarButtonItem(rightDrawerButton, animated: true)
    }
    
    
    //  MARK: - Button Handlers:
    
    func leftDrawerButtonPress(sender: AnyObject) {
        self.evo_drawerController?.toggleDrawerSide(.Left, animated: true, completion: nil)
    }
    func rightDrawerButtonPress(sender: AnyObject) {
        self.evo_drawerController?.toggleDrawerSide(.Right, animated: true, completion: nil)
    }
    
    

}

