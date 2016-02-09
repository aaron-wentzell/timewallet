//
//  ClientDetailsViewController.swift
//  TimeWallet
//
//  Created by Aaron Wentzell on 2016-02-08.
//  Copyright © 2016 Bodhi Tree Technologies. All rights reserved.
//

import UIKit

class ClientDetailsViewController: UIViewController {
    var selectedClient:Client! = nil
    
    @IBOutlet weak var clientName: UILabel!
    @IBOutlet weak var addressLine1: UILabel!
    @IBOutlet weak var addressLine2: UILabel!
    @IBOutlet weak var addressLine3: UILabel!
    @IBOutlet weak var phone: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Do view setup here.
        if(selectedClient != nil){
            clientName.text = selectedClient.name
            addressLine1.text = selectedClient.address
            addressLine2.text = selectedClient.city
            addressLine3.text = selectedClient.postalCode
            phone.text = selectedClient.phoneNumber
        }
        
    }
}
