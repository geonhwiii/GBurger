//
//  AppDelegate.swift
//  GBurger
//
//  Created by 정건휘 on 04/03/2019.
//  Copyright © 2019 gunw. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

   var window: UIWindow?
   var burgerList = [ListData]()


   func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
      
      
      
      
      
      return true
   }
   
   
   // MARK: - CoreData
   lazy var persistentContainer: NSPersistentContainer = {
      let container = NSPersistentContainer(name: "DataModel")
      container.loadPersistentStores {
         if let error = $1 as NSError? {
            fatalError("Unresolved error \(error), \(error.userInfo)")
         }
      }
      return container
   }()
   
   func saveContext() {
      let context = persistentContainer.viewContext
      if context.hasChanges {
         do {
            try context.save()
         } catch let error as NSError {
            fatalError("Unresolved error \(error), \(error.userInfo)")
         }
      }
   }
   
   func applicationWillTerminate(_ application: UIApplication) {
      self.saveContext()
   }
}

