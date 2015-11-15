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
    
    @IBOutlet weak var theLabel: UILabel!
    
    @IBAction func verifyMethod(sender: AnyObject)
    {
        let usr = "Kevin"
        let pw = "Sparky15"
        
        if textFieldUsername.text == usr && textFieldPassword.text == pw
        {
            theLabel.text = "Credentials correct"
            theLabel.textColor=UIColor.greenColor()
            textFieldUsername.resignFirstResponder()
            textFieldPassword.resignFirstResponder()
            performSegueWithIdentifier("goToFridge", sender: self)
        }
        else
        {
            theLabel.text = "Credentials incorrect"
            theLabel.textColor=UIColor.redColor()
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

