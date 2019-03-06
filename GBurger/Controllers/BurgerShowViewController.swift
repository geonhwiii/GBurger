//
//  BurgerShowViewController.swift
//  GBurger
//
//  Created by 정건휘 on 06/03/2019.
//  Copyright © 2019 gunw. All rights reserved.
//

import UIKit

class BurgerShowViewController: UIViewController {
   
   var fromTab = false
   var cellId = "burgerShowCell"
   let burgerList: [String] = ["burger1","burger2","burger3"]

   @IBOutlet weak var listCollectionView: UICollectionView!
   @IBOutlet weak var pager: UIPageControl!

   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      pager.currentPage = 0
      pager.numberOfPages = burgerList.count
      pager.currentPageIndicatorTintColor = .black
      pager.pageIndicatorTintColor = .white
      pager.defersCurrentPageDisplay = true
      listCollectionView.translatesAutoresizingMaskIntoConstraints = false
   }

   @IBAction func pageChanged(_ sender: UIPageControl) {
      fromTab = true
      let indexPath = IndexPath(item: sender.currentPage, section: 0)
      listCollectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
   }
}

extension BurgerShowViewController: UIScrollViewDelegate {
   func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {
      fromTab = false
      pager.updateCurrentPageDisplay()
   }
   
   func scrollViewDidScroll(_ scrollView: UIScrollView) {
      guard !fromTab else { return }
      let width = scrollView.bounds.width
      let x = scrollView.contentOffset.x + (width / 2.0)
      let newPage = Int(x / width)
      if pager.currentPage != newPage {
         pager.currentPage = newPage
      }
   }
}

extension BurgerShowViewController: UICollectionViewDataSource {
   func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
      return burgerList.count
   }
   
   func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as? BurgerShowCell else { fatalError("Can't found cell") }
      cell.burgerImageView.image = UIImage(named: burgerList[indexPath.item])
      return cell
   }
   
   func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
      return 0
   }
}

extension BurgerShowViewController: UICollectionViewDelegateFlowLayout {
   func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
      return collectionView.bounds.size
   }
}
