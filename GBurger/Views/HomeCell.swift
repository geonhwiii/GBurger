//
//  HomeCell.swift
//  GBurger
//
//  Created by 정건휘 on 06/03/2019.
//  Copyright © 2019 gunw. All rights reserved.
//

import UIKit

class HomeCell: UICollectionViewCell {
   
   @IBOutlet weak var cellImageView: UIImageView!
   
   override func awakeFromNib() {
      super.awakeFromNib()
      
      cellImageView.image = UIImage(named: "burger1")
   }
   
}
