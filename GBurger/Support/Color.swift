//
//  Color.swift
//  GBurger
//
//  Created by 정건휘 on 06/03/2019.
//  Copyright © 2019 gunw. All rights reserved.
//

import UIKit

extension UIColor {
   static func rgb(displayP3Red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
      return UIColor(displayP3Red: displayP3Red/255.0, green: green/255.0, blue: blue/255.0, alpha: 1.0)
   }
}
