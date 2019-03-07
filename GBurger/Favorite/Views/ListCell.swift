//
//  ListCell.swift
//  GBurger
//
//  Created by 정건휘 on 07/03/2019.
//  Copyright © 2019 gunw. All rights reserved.
//

import UIKit

class ListCell: UITableViewCell {
   
   @IBOutlet weak var burgerImage: UIImageView!
   @IBOutlet weak var burgerName: UILabel!
   @IBOutlet weak var time: UILabel!
   
   override func awakeFromNib() {
      burgerImage.layer.cornerRadius = 10
      burgerImage.layer.masksToBounds = true
   }
   
}
