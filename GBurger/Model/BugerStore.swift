//
//  BugerStore.swift
//  GBurger
//
//  Created by 정건휘 on 06/03/2019.
//  Copyright © 2019 gunw. All rights reserved.
//

import UIKit

class BurgerStore {
   var name: String
   var location: String
   var description: String
   var detail: String
   var image: UIImage?
   
   init(name: String, location: String, description: String, detail: String, image: UIImage) {
      self.name = name
      self.location = location
      self.description = description
      self.detail = detail
      self.image = image
   }
//   
//   class func fetchStore() -> [BurgerStore] {
//      var stores = [BurgerStore]?
//
//
//      let store1 = BurgerStore(name: "I am A Burger",
//                              location: "송파구",
//                              description: "이것저것여기저기",
//                              detail: "설명은 좀 길게",
//                              image: UIImage(named: "burger1"))
//      
//   }
//   
   
}
