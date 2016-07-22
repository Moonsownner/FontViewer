//
//  Expand.swift
//  Font
//
//  Created by J HD on 16/7/21.
//  Copyright © 2016年 J HD. All rights reserved.
//

import UIKit

let width = UIScreen.mainScreen().bounds.width
let heigth = UIScreen.mainScreen().bounds.height

extension UIColor{
    
    class func initWithRGB(red: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat) -> UIColor{
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: alpha)
    }
    
    class func colorFromHex(rgbValue:UInt32,_ alpha:Double=1.0) -> UIColor {
        let red = CGFloat((rgbValue & 0xFF0000) >> 16)/256.0
        let green = CGFloat((rgbValue & 0xFF00) >> 8)/256.0
        let blue = CGFloat(rgbValue & 0xFF)/256.0
        return UIColor(red:red, green:green, blue:blue, alpha:CGFloat(alpha))
    }
    
    convenience init(_ red: CGFloat, _ green: CGFloat, _ blue: CGFloat){
        self.init(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
    
}
