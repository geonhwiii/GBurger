//
//  HomeViewController.swift
//  GBurger
//
//  Created by 정건휘 on 06/03/2019.
//  Copyright © 2019 gunw. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
   
   let cellId = "collectionCell"
   let cellImageName: [String] = ["burger1", "first", "second", "third"]
   @IBOutlet weak var collectionView: UICollectionView!
   
   override func viewDidLoad() {
      super.viewDidLoad()
      // 네비게이션 바 구성
      navigationItem.title = "HOME"
      navigationController?.navigationBar.titleTextAttributes = [
         NSAttributedString.Key.font: UIFont(name: "Avenir Next Condensed", size: 24)!]
      navigationController?.navigationBar.isTranslucent = false
      navigationController?.navigationBar.barStyle = .black
      navigationController?.hidesBarsOnSwipe = true
      
   }
   
}

extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
   
   func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
      return 4
   }
   
   func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! HomeCell
      
      cell.cellImageView.image = UIImage(named: cellImageName[indexPath.item])
      
      return cell
   }
   
   func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
      return CGSize(width: view.frame.width, height: view.frame.height / 3)
   }
   
   func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
      return 10
   }
   
   
   
}
