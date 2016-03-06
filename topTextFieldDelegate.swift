//
//  topTextFieldDelegate.swift
//  imagePlayGround
//
//  Created by HhhotDog on 16/3/2.
//  Copyright © 2016年 Alexscott. All rights reserved.
//

import Foundation
import UIKit

class topTextFieldDelegate: NSObject, UITextFieldDelegate{
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if textField.text == ""{
            textField.text = "TOP"
        }
        textField.resignFirstResponder()
        return true
    }
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        if textField.text == "TOP"{
            textField.text = ""
        }
        return true
    }
}
