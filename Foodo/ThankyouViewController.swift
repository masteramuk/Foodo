//
//  ThankyouViewController.swift
//  Foodo
//
//  Created by Mohammad Nurdin bin Norazan on 6/14/15.
//  Copyright (c) 2015 AHKL2015. All rights reserved.
//

import UIKit

class ThankyouViewController: UIViewController {

    @IBOutlet weak var btnDonate: UIButton!
    @IBOutlet weak var btnSkip: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        btnDonate.backgroundColor = UIColor.clearColor()
        btnDonate.tintColor = UIColor.whiteColor()
        btnDonate.layer.cornerRadius = 5
        btnDonate.layer.borderWidth = 1
        btnDonate.layer.borderColor = UIColor.redColor().CGColor
        btnDonate.layer.backgroundColor = UIColor.redColor().CGColor
        
        btnSkip.backgroundColor = UIColor.clearColor()
        btnSkip.tintColor = UIColor.whiteColor()
        btnSkip.layer.cornerRadius = 5
        btnSkip.layer.borderWidth = 1
        btnSkip.layer.borderColor = UIColor.grayColor().CGColor
        btnSkip.layer.backgroundColor = UIColor.grayColor().CGColor
    }


}
