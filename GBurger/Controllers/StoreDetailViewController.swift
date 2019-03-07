//
//  StoreDetailViewController.swift
//  GBurger
//
//  Created by 정건휘 on 07/03/2019.
//  Copyright © 2019 gunw. All rights reserved.
//

import UIKit

class StoreDetailViewController: UIViewController {
   
   @IBOutlet weak var name: UILabel!
   @IBOutlet weak var location: UILabel!
   @IBOutlet weak var openCloseTime: UILabel!
   @IBOutlet weak var detail: UILabel!
   @IBOutlet weak var phoneNumber: UILabel!
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      
   }
   
   @IBAction func close(_ sender: Any) {
      dismiss(animated: true, completion: nil)
   }
   
}
