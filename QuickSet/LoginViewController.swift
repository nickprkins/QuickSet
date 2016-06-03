//
//  LoginViewController.swift
//  QuickSet
//
//  Created by Nick Perkins on 6/2/16.
//  Copyright © 2016 Nick Perkins. All rights reserved.
//

import UIKit
import Firebase

extension UITextField {
    
    @IBInspectable var placeHolderColor: UIColor? {
        get {
            return self.placeHolderColor
        }
        set {
            self.attributedPlaceholder = NSAttributedString(string:self.placeholder != nil ? self.placeholder! : "", attributes:[NSForegroundColorAttributeName: newValue!])
        }
    }
    
}

class LoginViewController: UIViewController {

    @IBOutlet var emailTextField: UITextField!
    
    @IBOutlet var passwordTextField: UITextField!
    
    var uid: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        FIRDatabase.database().persistenceEnabled = true
        view.backgroundColor = UIColor.redColor()
        
        FIRAuth.auth()?.addAuthStateDidChangeListener { auth, user in
            if user != nil {
                // User is signed in.
                CurrentUserManager.sharedInstance.uID = user!.uid
                self.performSegueWithIdentifier("AllowUserToLoginSegue", sender: self)
            } else {
                // No user is signed in.
            }
        }
        
    }
    
    
    @IBAction func loginButtonPressed(sender: AnyObject) {
        
        //Authenticate and login the user in Firebase
        FIRAuth.auth()?.signInWithEmail(emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            
            if error != nil {
                //error
                print("User was unable to sign in.")
            }else{
                self.uid = user!.uid
                print(user?.uid)
                print(self.uid)
                CurrentUserManager.sharedInstance.uID = user!.uid
                self.performSegueWithIdentifier("AllowUserToLoginSegue", sender: self)
            }
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
