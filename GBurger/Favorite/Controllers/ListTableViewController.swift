//
//  ListTableViewController.swift
//  GBurger
//
//  Created by 정건휘 on 07/03/2019.
//  Copyright © 2019 gunw. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {
   // 데이터 불러올 프로퍼티 추가
   lazy var listDAO = ListDAO()
   let appDelegate = UIApplication.shared.delegate as! AppDelegate
   
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
   }
   
   override func viewWillAppear(_ animated: Bool) {
      super.viewWillAppear(animated)
      
      // listDAO에서 데이터를 가져와 appDelegate에 저장
      self.appDelegate.burgerList = self.listDAO.fetchList()
      self.tableView.reloadData()
   }
   
   
   // MARK: - Table view data source
   
   override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      // #warning Incomplete implementation, return the number of rows
      return self.appDelegate.burgerList.count
   }
   
   
   override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
      let delegate = self.appDelegate.burgerList[indexPath.row]
//      let cellId = delegate.burgerImage == nil ? "listCell" : "listImageCell"
      let cell = tableView.dequeueReusableCell(withIdentifier: "listCell", for: indexPath) as! ListCell
      
      cell.burgerName.text = delegate.burgerName
      cell.burgerImage.image = delegate.burgerImage
      
      let f = DateFormatter()
      f.dateFormat = "yyyy-MM-dd HH:mm:ss"
      cell.time.text = f.string(from: delegate.time!)
      return cell
   }
   
   // 리스트 삭제 동작
   override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
      return .delete
   }
   
   override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
      let data = self.appDelegate.burgerList[indexPath.row]
      
      if listDAO.delete(data.objectID!) {
         self.appDelegate.burgerList.remove(at: indexPath.row)
         self.tableView.deleteRows(at: [indexPath], with: .fade)
      }
   }
   
   
}
