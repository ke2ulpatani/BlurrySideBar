//
//  SideBarTableViewController.swift
//  BlurrySideBar
//
//  Created by Ketul Patani on 21/01/15.
//  Copyright (c) 2015 Ketul Patani. All rights reserved.
//

import UIKit

//protocol SideBarTableViewControllerDelegate{
//    func sideBarControlDidSelectRow(indexpath: NSIndexPath)
//}

class SideBarTableViewController: UITableViewController {

    //var delegate : SideBarTableViewControllerDelegate?
    var tableData : [String] = []
    
    
    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return tableData.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell : UITableViewCell? = tableView.dequeueReusableCellWithIdentifier("Cell") as UITableViewCell?

        // Configure the cell...
        if cell == nil
        {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
            cell?.backgroundColor = UIColor.clearColor()
            cell?.textLabel?.textColor = UIColor.darkTextColor()
            
            var selectedView : UIView = UIView(frame: CGRect(x: 0, y: 0, width: cell!.frame.size.width, height: cell!.frame.size.height))
            selectedView.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.3)
            cell?.selectedBackgroundView = selectedView
        }
        cell?.textLabel?.text = tableData[indexPath.row]
        return cell!
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 45
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
            var alert = UIAlertView()
            alert.message = "\(tableData[indexPath.row])"
            alert.show()
//        delegate?.sideBarControlDidSelectRow(indexPath)
    }

}
