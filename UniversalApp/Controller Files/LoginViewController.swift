//
//  ViewController.swift
//  UniversalApp
//
//  Created by Admin on 5/9/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userNameTFOutlet: FloatLabelTextField!
    @IBOutlet weak var passwordTFOutlet: FloatLabelTextField!
 
    override func viewDidLoad() {
        super.viewDidLoad()
       
        userNameTFOutlet.attributedPlaceholder = UtilitiFile().placeHolderText(placeHolderName: "USER NAME")
        
        passwordTFOutlet.attributedPlaceholder =  UtilitiFile().placeHolderText(placeHolderName: "PASSWORD")
        
    }
    
    @IBAction func registerButtonAction(_ sender: UIButton) {
        
        let registerViewController = self.storyboard?.instantiateViewController(withIdentifier: "registerViewController") as! RegisterViewController
        self.navigationController?.pushViewController(registerViewController, animated: true)
        
    }

}

extension UITextField {
    func setBottomBorder() {
        self.borderStyle = .none
        self.layer.backgroundColor = UIColor.white.cgColor
        
        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.white.cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 0.0
    }
}
