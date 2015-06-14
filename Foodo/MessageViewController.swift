//
//  MessageViewController.swift
//  Foodo
//
//  Created by Mohammad Nurdin bin Norazan on 6/14/15.
//  Copyright (c) 2015 AHKL2015. All rights reserved.
//

import UIKit

class MessageViewController: UIViewController {

    @IBOutlet weak var btnDonate: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        btnDonate.backgroundColor = UIColor.clearColor()
        btnDonate.tintColor = UIColor.whiteColor()
        btnDonate.layer.cornerRadius = 5
        btnDonate.layer.borderWidth = 1
        btnDonate.layer.borderColor = UIColor.grayColor().CGColor
        btnDonate.layer.backgroundColor = UIColor.orangeColor().CGColor

    }

}
