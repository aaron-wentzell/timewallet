//
//  TimeEntry.swift
//  TimeWallet
//
//  Created by Aaron Wentzell on 2016-01-19.
//  Copyright © 2016 Bodhi Tree Technologies. All rights reserved.
//

import Foundation
import RealmSwift

class TimeEntry: Object {
    dynamic var id:Int32 = 0
    dynamic var client: Client?
    dynamic var service: Service?
    dynamic var hours: Double = 0.0
    dynamic var travel: Double = 0.0
    dynamic var mileage: Double = 0.0
    dynamic var expenses: Double = 0.0
    dynamic var notes: String? = nil
    
    // Specify properties to ignore (Realm won't persist these)
    
    //  override static func ignoredProperties() -> [String] {
    //    return []
    //  }
    
    override static func primaryKey() -> String? {
        return "id"
    }

}
