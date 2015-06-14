//
//  DonorResultViewController.swift
//  Foodo
//
//  Created by Mohammad Nurdin bin Norazan on 6/14/15.
//  Copyright (c) 2015 AHKL2015. All rights reserved.
//

import UIKit

class DonorResultViewController: UIViewController {

    @IBOutlet weak var txtAddress: UITextView!
    @IBOutlet weak var btnArchiveItem: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        txtAddress.backgroundColor = UIColor.clearColor()
        txtAddress.layer.cornerRadius = 5
        txtAddress.layer.borderWidth = 1
        txtAddress.layer.borderColor = UIColor.grayColor().CGColor
        txtAddress.layer.backgroundColor = UIColor.grayColor().CGColor
        txtAddress.tintColor = UIColor.whiteColor()
        
        btnArchiveItem.backgroundColor = UIColor.clearColor()
        btnArchiveItem.tintColor = UIColor.blackColor()
        btnArchiveItem.layer.cornerRadius = 5
        btnArchiveItem.layer.borderWidth = 1
        btnArchiveItem.layer.borderColor = UIColor.greenColor().CGColor
        btnArchiveItem.layer.backgroundColor = UIColor.greenColor().CGColor
        

    }

}
