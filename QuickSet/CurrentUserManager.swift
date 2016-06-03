//
//  CurrentUserManager.swift
//  QuickSet
//
//  Created by Nick Perkins on 6/3/16.
//  Copyright © 2016 Nick Perkins. All rights reserved.
//

import Foundation
import Firebase

class CurrentUserManager: AnyObject {
    var uID : String = ""
    var ref : AnyObject = FIRDatabase.database().reference()
    
    
    static let sharedInstance = CurrentUserManager()
    
    
}
