//
//  UploadDonateViewController.swift
//  Foodo
//
//  Created by Mohammad Nurdin bin Norazan on 6/13/15.
//  Copyright (c) 2015 AHKL2015. All rights reserved.
//

import UIKit

class UploadDonateViewController: UIViewController {

    @IBOutlet weak var txtItem: UITextField!
    @IBOutlet weak var btnCategory: UIButton!
    @IBOutlet weak var btnExpiry: UIButton!
    @IBOutlet weak var btnSnap: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        /*
        var border = CALayer()
        var width = CGFloat(2.0)
        border.borderColor = UIColor.darkGrayColor().CGColor
        border.frame = CGRect(x: 0, y: txtItem.frame.size.height - width, width:  txtItem.frame.size.width, height: txtItem.frame.size.height)
        
        border.borderWidth = width
        txtItem.layer.addSublayer(border)
        txtItem.layer.masksToBounds = true
        */
        
        btnCategory.backgroundColor = UIColor.clearColor()
        btnCategory.layer.cornerRadius = 5
        btnCategory.layer.borderWidth = 1
        btnCategory.layer.borderColor = UIColor.whiteColor().CGColor
        
        btnExpiry.backgroundColor = UIColor.clearColor()
        btnExpiry.layer.cornerRadius = 5
        btnExpiry.layer.borderWidth = 1
        btnExpiry.layer.borderColor = UIColor.whiteColor().CGColor
        
        btnSnap.backgroundColor = UIColor.clearColor()
        btnSnap.layer.cornerRadius = 5
        btnSnap.layer.borderWidth = 1
        btnSnap.layer.borderColor = UIColor.whiteColor().CGColor
        
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
