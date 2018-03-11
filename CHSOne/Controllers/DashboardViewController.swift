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
        self.commonInit()
    }
    
    //MARK: - Private Methods
    func commonInit() {
        self.dashboardCollectionView.register(UINib.init(nibName: "DCommonCell", bundle: Bundle.main), forCellWithReuseIdentifier: "DCommonCell")
        self.dashboardCollectionView.register(UINib.init(nibName: "DUpdateCell", bundle: Bundle.main), forCellWithReuseIdentifier: "DUpdateCell")
        self.dashboardCollectionView.register(UINib.init(nibName: "DUserCell", bundle: Bundle.main), forCellWithReuseIdentifier: "DUserCell")
        self.dashboardCollectionView.register(UINib.init(nibName: "DMaintenanceCell", bundle: Bundle.main), forCellWithReuseIdentifier: "DMaintenanceCell")
        self.dashboardCollectionView.register(UINib.init(nibName: "DHeaderView", bundle: Bundle.main), forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "DHeaderView")
    }
    
    //MARK: - UICollectionView DataSource
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionElementKindSectionHeader {
            let hView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "DHeaderView", for: indexPath)
            return hView
        }
        else {
            return UIView() as! UICollectionReusableView
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0 {
            if indexPath.row == 0{
                let cell: DMaintenanceCell = collectionView.dequeueReusableCell(withReuseIdentifier: "DMaintenanceCell", for: indexPath) as! DMaintenanceCell
                cell.addBorders(edges: [.all], color: UIColor.lightGray, thickness: 1.0)
                cell.initializeWith(index: indexPath.row, amount: "", description: "", buttonTitle: "PAY NOW")
                return cell
            }
            else if  indexPath.row == 1  {
                let cell: DUserCell = collectionView.dequeueReusableCell(withReuseIdentifier: "DUserCell", for: indexPath) as! DUserCell
                cell.addBorders(edges: [.all], color: UIColor.lightGray, thickness: 1.0)
                cell.initializeWith(index: indexPath.row, userImage: "", fullName: "", privacyImage: "", mobile: "")
                return cell
            }
            else if indexPath.row == 2 {
                let cell: DUpdateCell = collectionView.dequeueReusableCell(withReuseIdentifier: "DUpdateCell", for: indexPath) as! DUpdateCell
                cell.addBorders(edges: [.all], color: UIColor.lightGray, thickness: 1.0)
                cell.initializeWith(index: indexPath.row, title: "Latest Issue", description: "#id:\ndescription is not available", buttonTitle: "VIEW ISSUE")
                return cell
            }
            else {
                let cell: DUpdateCell = collectionView.dequeueReusableCell(withReuseIdentifier: "DUpdateCell", for: indexPath) as! DUpdateCell
                cell.addBorders(edges: [.all], color: UIColor.lightGray, thickness: 1.0)
                cell.initializeWith(index: indexPath.row, title: "Notice", description: "No Notice", buttonTitle: "VIEW ALL")
                return cell
            }
            
        }
        else {
            let cell: DCommonCell = collectionView.dequeueReusableCell(withReuseIdentifier: "DCommonCell", for: indexPath) as! DCommonCell
            if indexPath.row == 0 {
                cell.initializeCellWith(index: indexPath.row, image: "building", title: "My Property", bgColor: UIColor(red: 32/255, green: 151/255, blue: 244/255, alpha: 1.0))
            } else if indexPath.row == 1 {
                cell.initializeCellWith(index: indexPath.row, image: "bookmark", title: "Booking Facility", bgColor: UIColor(red: 224/255, green: 62/255, blue: 53/255, alpha: 1.0))
            } else if indexPath.row == 2 {
                cell.initializeCellWith(index: indexPath.row, image: "contacts", title: "My Directory", bgColor: UIColor(red: 138/255, green: 196/255, blue: 75/255, alpha: 1.0))
            } else {
                cell.initializeCellWith(index: indexPath.row, image: "danger", title: "Raise an Issue", bgColor: UIColor(red: 154/255, green: 41/255, blue: 177/255, alpha: 1.0))
            }
            return cell
        }
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
