//
//  LoginViewController.swift
//  Foodo
//
//  Created by Mohammad Nurdin bin Norazan on 6/13/15.
//  Copyright (c) 2015 AHKL2015. All rights reserved.
//

import UIKit
import Parse

class LoginViewController: UIViewController, FBLoginViewDelegate {

    @IBOutlet var fbLoginView : FBLoginView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.fbLoginView.delegate = self
        self.fbLoginView.readPermissions = ["public_profile", "email", "user_friends"]

        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bg.png")!)
        
    }

    // Facebook Delegate Methods
    
    func loginViewShowingLoggedInUser(loginView : FBLoginView!) {
        println("User Logged In")
        
        //var myToken = FBSession.activeSession().accessTokenData.accessToken
        
        
        performSegueWithIdentifier("NavigationSegue", sender: self)
    }
    
    func loginViewFetchedUserInfo(loginView : FBLoginView!, user: FBGraphUser) {
        println("User: \(user)")
        println("User ID: \(user.objectID)")
        println("User Name: \(user.name)")
        var userEmail = user.objectForKey("email") as! String
        println("User Email: \(userEmail)")
        
        login(user.objectID,name: user.name,email: userEmail)
        
    }
    
    func loginViewShowingLoggedOutUser(loginView : FBLoginView!) {
        println("User Logged Out")
    }
    
    func loginView(loginView : FBLoginView!, handleError:NSError) {
        println("Error: \(handleError.localizedDescription)")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func login(objectID:String, name:String, email:String){
        PFUser.logInWithUsernameInBackground("mnurdin", password:"204815") {
            (user: PFUser?, error: NSError?) -> Void in
            if user != nil {
                // Do stuff after successful login.
            } else {
                // The login failed. Check error to see why.
                
                var user = PFUser()
                user.username = "mnurdin"
                user.password = "204815"
                user.email = email
                // other fields can be set just like with PFObject
                user["facebookId"] = objectID
                user["name"] = name
                user["phone"] = "01126252058"
                
                user.signUpInBackgroundWithBlock {
                    (succeeded: Bool, error: NSError?) -> Void in
                    if let error = error {
                        let errorString = error.userInfo?["error"] as? NSString
                        // Show the errorString somewhere and let the user try again.
                        
                        self.login(objectID,name:name,email: email)
                    } else {
                        // Hooray! Let them use the app now.
                    }
                }
            }
        }

    }


}
