//
//  UtilitiFile.swift
//  UniversalApp
//
//  Created by Admin on 5/9/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation
import UIKit
class UtilitiFile: NSObject {
    
    func placeHolderText( placeHolderName: String) -> NSAttributedString {
        
      let thing =  NSAttributedString(string: placeHolderName,
                           attributes: [NSAttributedStringKey.foregroundColor: UIColor.white])
        
        return thing
        
    }
    
}
