//
//  RegisterViewController.swift
//  UniversalApp
//
//  Created by Admin on 5/9/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var userNameTFOutlet: FloatLabelTextField!
    @IBOutlet weak var emailTFOutlet: FloatLabelTextField!
    @IBOutlet weak var passwordTFOutlet: FloatLabelTextField!
    @IBOutlet weak var sexTFOutlet: FloatLabelTextField!
    @IBOutlet weak var dateOfBirthTFOutlet: FloatLabelTextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        userNameTFOutlet.attributedPlaceholder = UtilitiFile().placeHolderText(placeHolderName: "USER NAME")
        emailTFOutlet.attributedPlaceholder = UtilitiFile().placeHolderText(placeHolderName: "EMAIL")
        passwordTFOutlet.attributedPlaceholder =  UtilitiFile().placeHolderText(placeHolderName: "PASSWORD")
        sexTFOutlet.attributedPlaceholder =  UtilitiFile().placeHolderText(placeHolderName: "SEX")
        userNameTFOutlet.attributedPlaceholder = UtilitiFile().placeHolderText(placeHolderName: "DATE OF BIRTH")

    }
    
    @IBAction func backButtonAction(_ sender: UIButton) {
        
      self.navigationController?.popViewController(animated: true)
        
    }


}
