//
//  MenuViewController.swift
//  CHSOne
//
//  Created by Hardik Ajmeri on 02/03/18.
//  Copyright © 2018 FutureScape. All rights reserved.
//

import UIKit
import SideMenu

class MenuViewController: UITableViewController {

    //MARK: - IBOutlets & vars
    var menuTitle: Array<String> = []
    var menuIcon: Array<String> = []
    @IBOutlet weak var userImageButton: UIButton!
    
    //MARK: UIView Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        menuTitle = ["Dashboard", "Helpdesk", "Maintenance Due", "Other Bills", "Payment Receipt", "Directory", "Booking Facility", "My Property", "Gallery", "Change Password", "Logout"]
        menuIcon = ["dashboard-purple", "danger-purple", "rupee-purple", "rupee-purple", "invoice-purple", "contacts-purple", "bank-purple", "building-purple", "library-purple", "lock-purple", "logout-purple"]
        self.tableView.tableFooterView = UIView(frame: .zero)
        self.tableView.backgroundColor = UIColor(red: 0.117647058823529, green: 0.133333333333333, blue: 0.298039215686275, alpha: 1.0)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tableView.reloadData()
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
        cell.backgroundColor = UIColor(red: 0.117647058823529, green: 0.133333333333333, blue: 0.298039215686275, alpha: 1.0)
        cell.selectionStyle = .none
        
        cell.textLabel?.text = menuTitle[indexPath.row] as String!
        cell.textLabel?.textColor = UIColor(red: 0.490196078431373, green: 0.52156862745098, blue: 0.749019607843137, alpha: 1.0)
        cell.imageView?.image = UIImage(named: menuIcon[indexPath.row])
        cell.imageView?.contentMode = .scaleAspectFit
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let dashBoardVC = storyboard?.instantiateViewController(withIdentifier: "DashboardViewController") as! DashboardViewController
            self.navigationController?.pushViewController(dashBoardVC, animated: true)
        }
        else if indexPath.row == 1 {
            let dashBoardVC = storyboard?.instantiateViewController(withIdentifier: "DashboardViewController") as! DashboardViewController
            self.navigationController?.pushViewController(dashBoardVC, animated: true)
        }
        else if indexPath.row == 2 {
            let dashBoardVC = storyboard?.instantiateViewController(withIdentifier: "DashboardViewController") as! DashboardViewController
            self.navigationController?.pushViewController(dashBoardVC, animated: true)
        }
        else if indexPath.row == 3 {
            let dashBoardVC = storyboard?.instantiateViewController(withIdentifier: "DashboardViewController") as! DashboardViewController
            self.navigationController?.pushViewController(dashBoardVC, animated: true)
        }
        else if indexPath.row == 4 {
            let dashBoardVC = storyboard?.instantiateViewController(withIdentifier: "DashboardViewController") as! DashboardViewController
            self.navigationController?.pushViewController(dashBoardVC, animated: true)
        }else if indexPath.row == 5 {
            let dashBoardVC = storyboard?.instantiateViewController(withIdentifier: "DashboardViewController") as! DashboardViewController
            self.navigationController?.pushViewController(dashBoardVC, animated: true)
        }
        else if indexPath.row == 6 {
            let dashBoardVC = storyboard?.instantiateViewController(withIdentifier: "DashboardViewController") as! DashboardViewController
            self.navigationController?.pushViewController(dashBoardVC, animated: true)
        }
        else if indexPath.row == 7 {
            let dashBoardVC = storyboard?.instantiateViewController(withIdentifier: "DashboardViewController") as! DashboardViewController
            self.navigationController?.pushViewController(dashBoardVC, animated: true)
        }
        else {
            let currentVC = UIApplication.shared.keyWindow?.rootViewController
            currentVC?.dismiss(animated: true, completion: nil)
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 64
    }
    
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 64
    }

}
