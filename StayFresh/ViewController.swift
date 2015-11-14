//
//  ViewController.swift
//  HHWhatever
//
//  Created by Marchelle Lundquist on 11/14/15.
//  Copyright © 2015 HackHarvard. All rights reserved.
//

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
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

