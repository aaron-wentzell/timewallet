//
//  Service.swift
//  TimeWallet
//
//  Created by Aaron Wentzell on 2016-01-19.
//  Copyright © 2016 Bodhi Tree Technologies. All rights reserved.
//

import Foundation
import RealmSwift

class Service: Object {
    dynamic var id:Int32 = 0
    dynamic var name: String = ""
    dynamic var hoursPermitted: Bool = true
    dynamic var travelPermitted: Bool = true
    dynamic var mileagePermitted: Bool = true
    dynamic var expensesPermitted: Bool = true
    dynamic var client: Client?
    
    // Specify properties to ignore (Realm won't persist these)
    
    //  override static func ignoredProperties() -> [String] {
    //    return []
    //  }
    
    override static func primaryKey() -> String? {
        return "id"
    }
}
