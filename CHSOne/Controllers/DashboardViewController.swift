//
//  DashboardViewController.swift
//  CHSOne
//
//  Created by Hardik Ajmeri on 03/03/18.
//  Copyright © 2018 FutureScape. All rights reserved.
//

import UIKit

class DashboardViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    //MARK: - IBOutlets & vars
    @IBOutlet weak var btnLanguage: UIBarButtonItem!
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    @IBOutlet weak var btnNotification: UIBarButtonItem!
    @IBOutlet weak var dashboardCollectionView: UICollectionView!
    
    //MARK: - UIView Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - UICollectionView DataSource
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DashboradCell", for: indexPath)
        
        if indexPath.section == 0 {
            cell.addBorders(edges: [.all], color: UIColor.lightGray, thickness: 1.0)
        }
        else {
            if indexPath.row == 0 {
                cell.backgroundColor = UIColor(red: 32/255, green: 151/255, blue: 244/255, alpha: 1.0)
            } else if indexPath.row == 1 {
                cell.backgroundColor = UIColor(red: 224/255, green: 62/255, blue: 53/255, alpha: 1.0)
            } else if indexPath.row == 2 {
                cell.backgroundColor = UIColor(red: 138/255, green: 196/255, blue: 75/255, alpha: 1.0)
            } else {
                cell.backgroundColor = UIColor(red: 154/255, green: 41/255, blue: 177/255, alpha: 1.0)
            }
        }
        
        return cell
    }
    
    //MARK: - UICollectionView Delegate
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: Device.TheCurrentDeviceWidth/2 - 40, height: Device.TheCurrentDeviceWidth/2 - 40)
        return layout.itemSize
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        if section == 1 {
            return CGSize(width: Device.TheCurrentDeviceWidth, height: 24)
        }
        else {
            return CGSize(width: 0, height: 0)
        }
    }
    
    //MARK: - Memory Warning Methods
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
