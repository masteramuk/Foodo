//
//  DonateViewController.swift
//  Foodo
//
//  Created by Mohammad Nurdin bin Norazan on 6/13/15.
//  Copyright (c) 2015 AHKL2015. All rights reserved.
//

import UIKit

class DonateViewController: UIViewController {

    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var donateView: UIView!
    @IBOutlet weak var needView: UIView!
    @IBOutlet weak var messageView: UIView!
    
    @IBAction func segmentedControl(sender: AnyObject) {
        switch segmentedControl.selectedSegmentIndex
        {
        case 0:
            //show donate view
            donateView.hidden = false
            needView.hidden = true
            messageView.hidden = true
        case 1:
            //show need view
            donateView.hidden = true
            needView.hidden = false
            messageView.hidden = true
        case 2:
            //show message view
            donateView.hidden = true
            needView.hidden = true
            messageView.hidden = false
        default:
            break;
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        donateView.hidden = false
        needView.hidden = true
        messageView.hidden = true
    }
    
    @IBAction func btnLogout(sender: AnyObject) {
        PFUser.logOut()
        var currentUser = PFUser.currentUser() // this will now be nil
        
        FBSession.activeSession().closeAndClearTokenInformation()
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let loginViewController = storyBoard.instantiateViewControllerWithIdentifier("LoginView") as! LoginViewController
        presentViewController(loginViewController, animated:true, completion:nil)
    }

}
