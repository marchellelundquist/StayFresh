//
//  ViewController.swift
//  StayFresh
//
//  Created by Marchelle Lundquist, Mikael Mantis, Victoria Yang, Kevin Park on 11/14/15.
//  Copyright © 2015 HackHarvard. All rights reserved.
//

import Parse
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textFieldUsername: UITextField!
    
    
    @IBOutlet weak var textFieldPassword: UITextField!
    
   // @IBOutlet weak var theLabel: UILabel!
    
    @IBAction func verifyMethod(sender: AnyObject)
    {
        let usr = "Kevin"
        let pw = "Sparky15"
        
        if textFieldUsername.text == usr && textFieldPassword.text == pw
        {
<<<<<<< HEAD
         //   theLabel.text = "Credentials correct"
         //   theLabel.textColor=UIColor.greenColor()
=======
          //  theLabel.text = "Credentials correct"
          //  theLabel.textColor=UIColor.greenColor()
>>>>>>> c6c875a7b3a339b3f5e7dc03c1fb6d3e6fd68ee0
            textFieldUsername.resignFirstResponder()
            textFieldPassword.resignFirstResponder()
            performSegueWithIdentifier("goToFridge", sender: self)
        }
        else
        {
<<<<<<< HEAD
         //   theLabel.text = "Credentials incorrect"
         //   theLabel.textColor=UIColor.redColor()
=======
          //  theLabel.text = "Credentials incorrect"
          //  theLabel.textColor=UIColor.redColor()
>>>>>>> c6c875a7b3a339b3f5e7dc03c1fb6d3e6fd68ee0
            textFieldUsername.resignFirstResponder()
            textFieldPassword.resignFirstResponder()
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let testObject = PFObject(className: "TestObject")
        testObject["foo"] = "bar"
        testObject.saveInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
            print("Object has been saved.")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

