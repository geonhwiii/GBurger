//
//  BurgerShowCell.swift
//  GBurger
//
//  Created by 정건휘 on 06/03/2019.
//  Copyright © 2019 gunw. All rights reserved.
//

import UIKit

class BurgerShowCell: UICollectionViewCell {
   
   @IBOutlet weak var burgerImageView: UIImageView!
   
   var image: UIImage? {
      didSet {
         self.burgerImageView.image = image
      }
   }

   override func awakeFromNib() {
      super.awakeFromNib()

      self.burgerImageView.image = image
   }
}
