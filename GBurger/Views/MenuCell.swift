//
//  MenuCell.swift
//  GBurger
//
//  Created by 정건휘 on 06/03/2019.
//  Copyright © 2019 gunw. All rights reserved.
//

import UIKit


class MenuCell: UICollectionViewCell {
   
   @IBOutlet weak var menuLabel: UILabel!
   
   override var isHighlighted: Bool {
      didSet {
         menuLabel.textColor = isHighlighted ? .red : .white
      }
   }

   override var isSelected: Bool {
      didSet {
         menuLabel.textColor = isSelected ? .red : .white
      }
   }

}
