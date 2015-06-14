//
//  UploadCollectViewController.swift
//  Foodo
//
//  Created by Mohammad Nurdin bin Norazan on 6/13/15.
//  Copyright (c) 2015 AHKL2015. All rights reserved.
//

import UIKit

class UploadCollectViewController: UIViewController {

    @IBOutlet weak var btnCategory: UIButton!
    @IBOutlet weak var btnCreate: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        btnCategory.backgroundColor = UIColor.clearColor()
        btnCategory.layer.cornerRadius = 5
        btnCategory.layer.borderWidth = 1
        btnCategory.layer.borderColor = UIColor.whiteColor().CGColor
        
        btnCreate.backgroundColor = UIColor.clearColor()
        btnCreate.layer.cornerRadius = 5
        btnCreate.layer.borderWidth = 1
        btnCreate.layer.borderColor = UIColor.whiteColor().CGColor
        btnCreate.layer.backgroundColor = UIColor.whiteColor().CGColor
    
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
