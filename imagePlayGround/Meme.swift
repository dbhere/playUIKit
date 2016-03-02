//
//  Meme.swift
//  imagePlayGround
//
//  Created by HhhotDog on 16/3/2.
//  Copyright © 2016年 Alexscott. All rights reserved.
//

import Foundation
import UIKit

struct Meme{
    var topText:String?
    var bottomText:String?
    var image:UIImage?
    var memedImage:UIImage?
    
    init(topText:String?, bottomText:String?, image:UIImage?, memedImage:UIImage?){
        self.topText = topText
        self.bottomText = bottomText
        self.image = image
        self.memedImage = memedImage
    }
}