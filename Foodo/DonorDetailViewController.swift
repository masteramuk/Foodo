//
//  DonorDetailViewController.swift
//  Foodo
//
//  Created by Mohammad Nurdin bin Norazan on 6/14/15.
//  Copyright (c) 2015 AHKL2015. All rights reserved.
//

import UIKit

class DonorDetailViewController: UIViewController {

    @IBOutlet weak var txtAdress: UITextView!
    @IBOutlet weak var txtMinute: UILabel!
    @IBOutlet weak var btnCollect: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        txtAdress.backgroundColor = UIColor.clearColor()
        txtAdress.layer.cornerRadius = 5
        txtAdress.layer.borderWidth = 1
        txtAdress.layer.borderColor = UIColor.grayColor().CGColor
        txtAdress.layer.backgroundColor = UIColor.grayColor().CGColor
        txtAdress.tintColor = UIColor.whiteColor()
        
        btnCollect.backgroundColor = UIColor.clearColor()
        btnCollect.layer.cornerRadius = 5
        btnCollect.layer.borderWidth = 1
        btnCollect.layer.borderColor = UIColor.orangeColor().CGColor
        btnCollect.layer.backgroundColor = UIColor.orangeColor().CGColor
        btnCollect.tintColor = UIColor.whiteColor()
    }

    @IBAction func stepper(sender: AnyObject) {
        
    }
    

}
