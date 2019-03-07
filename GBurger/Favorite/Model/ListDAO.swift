//
//  ListDAO.swift
//  GBurger
//
//  Created by 정건휘 on 07/03/2019.
//  Copyright © 2019 gunw. All rights reserved.
//

import UIKit
import CoreData

class ListDAO {
   // entity이름
   let entityName = "ListData"
   
   lazy var context: NSManagedObjectContext = {
      let appDelegate = UIApplication.shared.delegate as! AppDelegate
      return appDelegate.persistentContainer.viewContext
   }()
   
   // fetchList() : 저장된 리스트를 불러옴
   func fetchList() -> [ListData] {
      // 저장할 리스트 생성
      var myList = [ListData]()
      
      // request객체 생성
      let fetchRequest: NSFetchRequest<ListDataMO> = ListDataMO.fetchRequest()
      // 시간 순 정렬
      let timeDesc = NSSortDescriptor(key: "time", ascending: false)
      fetchRequest.sortDescriptors = [timeDesc]
      
      do {
         let resultSet = try self.context.fetch(fetchRequest)
         for result in resultSet {
            let data = ListData()
            data.burgerName = result.burgerName
            data.time = result.time
            data.objectID = result.objectID
            // 이미지가 존재할 때 이미지 복사
            if let imageData = result.burgerImage as Data? {
               data.burgerImage = UIImage(data: imageData)
            }
            myList.append(data)
         }
      } catch {
         print(error.localizedDescription)
      }
      return myList
   }
   
   // 새 리스트 작성
   func insert(_ data: ListData) {
      // managedObject 인스턴스 생성
      let object = NSEntityDescription.insertNewObject(forEntityName: entityName, into: self.context) as! ListDataMO
      
      // data로부터 값 복사
      object.burgerName = data.burgerName
      object.time = data.time
      
      if let image = data.burgerImage {
         object.burgerImage = image.pngData()
      }
      
      // persistentContainer에 저장
      do {
         try self.context.save()
      } catch {
         print(error.localizedDescription)
      }
   }
   
   // 리스트 삭제
   func delete(_ objectId: NSManagedObjectID) -> Bool {
      let object = self.context.object(with: objectId)
      self.context.delete(object)
      // persistentContainer에 저장
      do {
         try self.context.save()
         return true
      } catch {
         print(error.localizedDescription)
         return false
      }
   }
}
