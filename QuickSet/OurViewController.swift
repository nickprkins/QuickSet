//
//  OurViewController.swift
//  QuickSet
//
//  Created by Nick Perkins on 5/31/16.
//  Copyright © 2016 Nick Perkins. All rights reserved.
//

import UIKit

class OurViewController: UIViewController {

    
    @IBOutlet var menuButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Change Nav Bar color to Red
        navigationController!.navigationBar.barTintColor = UIColor.redColor()
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 126, height: 30))
        imageView.contentMode = .ScaleAspectFit
        let image = UIImage(named: "titleAppIcon")
        imageView.image = image
        navigationItem.titleView = imageView

        if self.revealViewController() != nil {
            menuButton.target = revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
