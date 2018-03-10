//
//  MenuViewController.swift
//  CHSOne
//
//  Created by Hardik Ajmeri on 02/03/18.
//  Copyright © 2018 FutureScape. All rights reserved.
//

import UIKit

class MenuViewController: UITableViewController {

    //MARK: - IBOutlets & vars
    var menuTitle: Array<String> = []
    var menuIcon: Array<String> = []
    
    //MARK: UIView Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        menuTitle = ["Dashboard", "Helpdesk", "Maintenance Due", "Other Bills", "Payment Receipt", "Directory", "Booking Facility", "My Property", "Gallery", "Change Password", "Logout"]
        menuIcon = ["dashboard", "danger", "rupee", "rupee", "invoice", "contacts", "bank", "building", "library", "lock", "logout"]
        self.tableView.tableFooterView = UIView(frame: .zero)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuTitle.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "MenuCell")!
        cell.backgroundColor = UIColor(red: 1/255, green: 25/255, blue: 147/255, alpha: 0.5)
        cell.selectionStyle = .none
        
        cell.textLabel?.text = menuTitle[indexPath.row] as String!
        cell.textLabel?.textColor = UIColor.groupTableViewBackground
        cell.imageView?.image = UIImage(named: menuIcon[indexPath.row])
        cell.imageView?.contentMode = .scaleAspectFit
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 64
    }
    
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 64
    }

}
