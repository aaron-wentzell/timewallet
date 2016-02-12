//
//  ServiceDataService.swift
//  TimeWallet
//
//  Created by Aaron Wentzell on 2016-02-11.
//  Copyright © 2016 Bodhi Tree Technologies. All rights reserved.
//

import Foundation

class ServiceDataService:NSObject {
    
    //MARK: Service Data
    func getServiceDataForClients(userName: String) -> [Service] {
        var returnServices:[Service] = []
        
        if(ApplicationProps.testMode){
            for index in 1...10 {
                //TODO figure out how to attach services to clients
            }
        }else{
            //TODO change this to grab from server
        }
        
        return returnServices
    }

}
