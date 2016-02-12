//
//  ClientDataService.swift
//  TimeWallet
//
//  Created by Aaron Wentzell on 2016-01-19.
//  Copyright © 2016 Bodhi Tree Technologies. All rights reserved.
//

import Foundation

class ClientDataService: NSObject {
    
    //MARK: Client Data
    func getUserClients(userName: String) -> [Client] {
        var returnClients:[Client] = []
        
        if(ApplicationProps.testMode){
            for index in 1...10 {
                var newClient: Client = Client()
                newClient.name = "Name-\(index)"
                newClient.address = "\(index) Any Street"
                newClient.city = "Edmonton"
                newClient.id = Int32.init(index)
                newClient.postalCode = "T6R1B4"
                newClient.phoneNumber = "777-777-777\(index)"
                
                returnClients.append(newClient)
            }
        }else{
            //TODO change this to grab from server
        }
        
        return returnClients
    }
}
