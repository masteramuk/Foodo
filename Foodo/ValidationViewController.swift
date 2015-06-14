
//
//  ValidationViewController.swift
//  Foodo
//
//  Created by Mohammad Nurdin bin Norazan on 6/13/15.
//  Copyright (c) 2015 AHKL2015. All rights reserved.
//

import UIKit

class ValidationViewController: UIViewController {

    @IBOutlet weak var txtOrganization: UITextField!
    @IBOutlet weak var txtPhone: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var btnValidation: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        btnValidation.backgroundColor = UIColor.clearColor()
        btnValidation.tintColor = UIColor.whiteColor()
        btnValidation.layer.cornerRadius = 5
        btnValidation.layer.borderWidth = 1
        btnValidation.layer.borderColor = UIColor.grayColor().CGColor
        btnValidation.layer.backgroundColor = UIColor.orangeColor().CGColor
        
        var swipeDown = UISwipeGestureRecognizer(target: self, action: Selector("handleSwipes:"))
        swipeDown.direction = .Down
        view.addGestureRecognizer(swipeDown)
        
    }
    
    func handleSwipes(sender:UISwipeGestureRecognizer) {
        if (sender.direction == .Down) {
            self.view.endEditing(true)
        }
    }

}
