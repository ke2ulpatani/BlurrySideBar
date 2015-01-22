//
//  ViewController.swift
//  BlurrySideBar
//
//  Created by Ketul Patani on 21/01/15.
//  Copyright (c) 2015 Ketul Patani. All rights reserved.
//

import UIKit

class ViewController: UIViewController /*,SideBarDelegate*/{

    var sideBar : SideBar = SideBar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sideBar = SideBar(sourceView: self.view, menuItems: ["Ketul Patani","Steve Jobs","Steve Balmer"])
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    func sideBarDidSelectButtonAtIndex(index: Int) {
//        
//    }

}

