//
//  bottomTextFieldDelegate.swift
//  imagePlayGround
//
//  Created by HhhotDog on 16/3/2.
//  Copyright © 2016年 Alexscott. All rights reserved.
//

import Foundation
import UIKit

class  bottomTextFieldDelegate:NSObject, UITextFieldDelegate{
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        if textField.text == "BOTTOM"{
            textField.text = ""
        }
        return true
    }

}
