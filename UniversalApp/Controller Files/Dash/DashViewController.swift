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
    
    @IBOutlet weak var optionButton: Floaty!
    @IBOutlet weak var enterText_TextViewOutlet: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        enterText_TextViewOutlet.text = "Enter your text here..."
        enterText_TextViewOutlet.textColor = UIColor.lightGray
        
        optionButton.openAnimationType = .slideLeft
        optionButton.addItem("logo", icon: UIImage(named: "logo")!)
        optionButton.addItem("logo", icon: UIImage(named: "logo")!)
        optionButton.addItem("logo", icon: UIImage(named: "logo")!)

        view.bringSubview(toFront: optionButton)
        
    }

}

extension DashViewController : UITextViewDelegate {
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.textColor == UIColor.lightGray {
            textView.text = nil
            textView.textColor = UIColor.black
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            textView.text = "Enter your text here..."
            textView.textColor = UIColor.lightGray
        }
    }
}
