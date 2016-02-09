//
//  MyClientViewController.swift
//  TimeWallet
//
//  Created by Aaron Wentzell on 2016-01-19.
//  Copyright © 2016 Bodhi Tree Technologies. All rights reserved.
//

import UIKit

class MyClientViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    var clientDataService: ClientDataService = ClientDataService()
    var clients:[Client]! = []
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        clients = clientDataService.getUserClients("username")  //TODO get current user name
    }
    
    //MARK: UITableViewDataSource Methods
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return clients.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell")! as UITableViewCell
        
        cell.textLabel?.text = clients[indexPath.row].name
        
        return cell
    }
    
    
    //MARK: UITableViewDelegate Methods
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        print("You de-selected cell #\(indexPath.row)!")
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("You selected cell #\(indexPath.row)!")
        
        self.performSegueWithIdentifier("showClientDetail", sender:indexPath)
    }
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "showClientDetail" {
            let clientDetailViewController = segue.destinationViewController as! ClientDetailsViewController
            //if let selectedClientCell = sender as? NSIndexPath {
                let indexPath = tableView.indexPathForSelectedRow
                let selectedClient  = clients[indexPath!.row] //TODO Fix this with DB
                clientDetailViewController.selectedClient = selectedClient
            //}
        }
    }
    
    
    
}
