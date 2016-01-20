//
//  Client.swift
//  TimeWallet
//
//  Created by Aaron Wentzell on 2016-01-19.
//  Copyright © 2016 Bodhi Tree Technologies. All rights reserved.
//

import Foundation
import RealmSwift

class Client: Object {
    dynamic var id:Int32 = 0
    dynamic var name: String = ""
    dynamic var address: String = ""
    dynamic var city: String = ""
    dynamic var postalCode: String = ""
    dynamic var phoneNumber: String = ""
    
    // Specify properties to ignore (Realm won't persist these)
    
    //  override static func ignoredProperties() -> [String] {
    //    return []
    //  }
    
    override static func primaryKey() -> String? {
        return "id"
    }
}
