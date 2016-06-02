//
//  NotificationsTableViewController.swift
//  QuickSet
//
//  Created by Nick Perkins on 6/1/16.
//  Copyright © 2016 Nick Perkins. All rights reserved.
//

import UIKit

class NotificationsTableViewController: UITableViewController {
    @IBOutlet var viewAllButton: UIButton!
    @IBOutlet var notificationTableView: UITableView!
    @IBOutlet var notifyCell2: UITableViewCell!
    @IBOutlet var notification1Cell: UITableViewCell!
    @IBOutlet var viewAllCell: UITableViewCell!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        notificationTableView.allowsSelection = true
        
        viewAllButton.layer.borderColor = UIColor.lightGrayColor().CGColor
        viewAllButton.layer.borderWidth = 1
        viewAllButton.layer.cornerRadius = 10
        
        notification1Cell.layer.borderWidth = 0.5
        notification1Cell.layer.borderColor = UIColor.lightGrayColor().CGColor
        notifyCell2.layer.borderWidth = 0.5
        notifyCell2.layer.borderColor = UIColor.lightGrayColor().CGColor
        viewAllCell.layer.borderWidth = 0.5
        viewAllCell.layer.borderColor = UIColor.lightGrayColor().CGColor
        
    }
    
    @IBAction func viewAllButtonPressed(sender: AnyObject) {
        
        print("You tapped the button bud!")
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//    // MARK: - Table view data source
//
//    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }
//
//    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 0
//    }

    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
