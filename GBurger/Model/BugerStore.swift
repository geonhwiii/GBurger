//
//  BugerStore.swift
//  GBurger
//
//  Created by 정건휘 on 06/03/2019.
//  Copyright © 2019 gunw. All rights reserved.
//

import UIKit

class BurgerStore {
   
   var region: String
   var info: [BurgerManager]
   
   init(region: String, info: [BurgerManager]) {
      self.region = region
      self.info = info
   }
   
   class func getStoreNames() -> [BurgerStore] {
      return []
   }
   
   private class func store() -> BurgerStore {
      var store = [BurgerManager]()
      
      store.append(BurgerManager(name: "I am A Burger",
                                 location: "서울 마포구 와우산로30길 13",
                                 openCloseTime: "매일 11:30 - 21:00" ,
                                 phoneNumber: "02-338-8507",
                                 discription:  """
                                                   수요미식회 16회 방영
                                                   찾아라맛있는TV 624회 방영
                                                """,
                                 imageName: "burger1"))
      store.append(BurgerManager(name: "BROOKLYN the BURGER JOINT",
                                 location: "부산 해운대구 센텀4로 15",
                                 openCloseTime: "매일 11:00 - 21:30",
                                 phoneNumber: "051-745-1941",
                                 discription: "수요 미식회 16회 방영",
                                 imageName: "burger2"))
      store.append(BurgerManager(name: "HIGHFIVE",
                                 location: "부산 남구 용소로 21번길 45",
                                 openCloseTime: "매일 11:30 - 22:00",
                                 phoneNumber: "051-623-0404",
                                 discription: "월요일 휴무 / LO: 21:00",
                                 imageName: "burger3")
      )
      store.append(BurgerManager(name: "Burger In NewYork",
                                 location: "부산 해운대구 해운대해변로 298번길 9",
                                 openCloseTime: "매일 10:30 - 20:30",
                                 phoneNumber: "051-743-0144",
                                 discription: "연중 무휴, LO: 20:30",
                                 imageName: "burger4"))
      return BurgerStore(region: "부산", info: store)
   }
   
}


// 햄버거 가게: 1. 홍대 아이엠어버거 2. 센텀 브루클린 3. 대연 하이파이브 4. 해운대 버거인 뉴욕
// 홍대 아이엠어버거 : 1.위치 2. 영업시간 3. 메뉴 4. 전화번호 5. 특징
// 센텀 브루클린 : 1.위치 2. 영업시간 3. 메뉴 4. 전화번호 5. 특징
// 대연 하이파이브 : 1~5
// 해운대 버거인뉴욕 : 1~5
