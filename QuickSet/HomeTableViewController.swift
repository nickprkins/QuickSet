//
//  HomeTableViewController.swift
//  QuickSet
//
//  Created by Nick Perkins on 6/1/16.
//  Copyright © 2016 Nick Perkins. All rights reserved.
//

import UIKit
import Firebase

class HomeTableViewController: UITableViewController {

    @IBOutlet var homeTableView: UITableView!
    @IBOutlet var nextGameView: UIView!
    @IBOutlet var notificationView: UIView!
    @IBOutlet var victoryView: UIView!
    @IBOutlet var rankView: UIView!
    @IBOutlet var losesView: UIView!
    var userID : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.userID = CurrentUserManager.sharedInstance.uID
        
        
        // disable selecting the cells.
        homeTableView.allowsSelection = false
        
        
        //Style the NEXT GAME view on the landing page
        nextGameView.layer.borderWidth = 1
        nextGameView.layer.borderColor = UIColor.lightGrayColor().CGColor
        nextGameView.layer.cornerRadius = 10
        
        //Style the NOTIFICATIONS view on the landing page
        notificationView.layer.borderWidth = 1
        notificationView.layer.borderColor = UIColor.lightGrayColor().CGColor
        notificationView.layer.cornerRadius = 10
        
        //Style the VICTORIES view on the landing page
        victoryView.layer.borderWidth = 1
        victoryView.layer.borderColor = UIColor.lightGrayColor().CGColor
        victoryView.layer.cornerRadius = 10
        
        //Style the LOSSES view on the landing page
        losesView.layer.borderWidth = 1
        losesView.layer.borderColor = UIColor.lightGrayColor().CGColor
        losesView.layer.cornerRadius = 10
        
        //Style the RANK view on the landing page
        rankView.layer.borderWidth = 1
        rankView.layer.borderColor = UIColor.lightGrayColor().CGColor
        rankView.layer.cornerRadius = 10

        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

//    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }
//
//    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 0
//    }
//
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
