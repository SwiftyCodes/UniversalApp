//
//  DashViewController.swift
//  UniversalApp
//
//  Created by Admin on 5/14/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit
import Floaty

class DashViewController: UIViewController {
    
    @IBOutlet weak var aaa: Floaty!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        aaa.openAnimationType = .slideLeft
        aaa.addItem("logo", icon: UIImage(named: "logo")!)
        aaa.addItem("logo", icon: UIImage(named: "logo")!)
        aaa.addItem("logo", icon: UIImage(named: "logo")!)

        
    }

}
