//
//  BurgerManager.swift
//  GBurger
//
//  Created by 정건휘 on 07/03/2019.
//  Copyright © 2019 gunw. All rights reserved.
//

import UIKit

class BurgerManager {
   
   var name: String
   var location: String
   var openCloseTime: String
   var phoneNumber: String
   var discription: String
   var image: UIImage?
   
   init(name: String, location: String, openCloseTime: String, phoneNumber: String, discription: String, imageName: String) {
      self.name = name
      self.location = location
      self.openCloseTime = openCloseTime
      self.phoneNumber = phoneNumber
      self.discription = discription
      
      if let image = UIImage(named: imageName) {
         self.image = image
      } else {
         self.image = UIImage(named: "default")
      }
   }
   
   
}
