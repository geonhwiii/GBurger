//
//  TopMenuViewController.swift
//  GBurger
//
//  Created by 정건휘 on 06/03/2019.
//  Copyright © 2019 gunw. All rights reserved.
//

import UIKit

class TopMenuViewController: UIViewController {
   
   var horizontalBarLeftAnchorConstraints: NSLayoutConstraint?
   let menuCellId = "menuCell"
   let menuNames = ["FEED","HOTSPOT","NEW","HERE"]
   var homeViewController: HomeViewController?
   
   @IBOutlet weak var collectionView: UICollectionView!
   @IBOutlet weak var topMenuCollectionView: UICollectionView!
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      
   }
   
}

extension TopMenuViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
   
   // 컬렉션 셀 개수
   func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
      return menuNames.count
   }
   
   // 컬렉션 셀 구성
   func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: menuCellId, for: indexPath) as? MenuCell else { fatalError("Can't found cell") }
      cell.backgroundColor = .black
      cell.menuLabel.text = menuNames[indexPath.item]
      cell.menuLabel.textColor = .white
      cell.menuLabel.highlightedTextColor = .red
      
      return cell
   }
   
   // 컬렉션 셀 사이즈
   func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
      return CGSize(width: view.frame.width / 4, height: view.frame.height)
   }
   
   // 컬렉션 셀 사이 간격
   func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
      return 0
   }
   
   // 컬렉션 셀 선택 동작
   func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
      print(indexPath.item)
   }
   
}
