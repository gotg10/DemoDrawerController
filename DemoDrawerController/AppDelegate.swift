//
//  AppDelegate.swift
//  DemoDrawerController
//
//  Created by Jumpei Katayama on 8/19/15.
//  Copyright © 2015 Jumpei Katayama. All rights reserved.
//

import UIKit
import DrawerController


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let defaults = NSUserDefaults.standardUserDefaults()

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
            
        // DrwerController initialize
        let storybord = UIStoryboard(name: "Main", bundle: nil)
        let centerVc = storybord.instantiateViewControllerWithIdentifier("CenterNavigation") as! UINavigationController
        let leftVc = storybord.instantiateViewControllerWithIdentifier("LeftSideMenuNavigation") as! UINavigationController
        let rightVc = storybord.instantiateViewControllerWithIdentifier("RightSideMenuNavigation") as! UINavigationController
        let drawerController = DrawerController(centerViewController: centerVc, leftDrawerViewController: leftVc, rightDrawerViewController: rightVc)
        drawerController.restorationIdentifier = "Drawer"
        drawerController.maximumRightDrawerWidth = 200.0
        drawerController.openDrawerGestureModeMask = .All
        drawerController.closeDrawerGestureModeMask = .All
        
        drawerController.drawerVisualStateBlock = ({ (drawerController: DrawerController, drawerSide: DrawerSide, percentVisible: CGFloat) in
            
            if drawerSide == .Left {
                let sideViewCtl: UIViewController   
                sideViewCtl = drawerController.leftDrawerViewController!
                sideViewCtl.view.alpha = percentVisible
                
            }
        })
        window?.rootViewController = drawerController
        window?.makeKeyAndVisible()
        

        return true
    }

}

