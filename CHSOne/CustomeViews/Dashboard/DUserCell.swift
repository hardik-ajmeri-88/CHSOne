//
//  DUserCell.swift
//  CHSOne
//
//  Created by Hardik Ajmeri on 11/03/18.
//  Copyright © 2018 FutureScape. All rights reserved.
//

import UIKit

class DUserCell: UICollectionViewCell {

    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var lblFullName: UILabel!
    @IBOutlet weak var lockImageView: UIImageView!
    @IBOutlet weak var lblMobileNumber: UILabel!
    @IBOutlet weak var btnPrivacy: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func initializeWith(index: Int, userImage: String, fullName: String, privacyImage: String, mobile: String) {
        userImageView.tag = index
        lblFullName.tag = index
        lockImageView.tag = index
        lblMobileNumber.tag = index
        btnPrivacy.tag = index
        
        userImageView.image = UIImage(named: userImage)
        lblFullName.text = fullName
        lockImageView.image = UIImage(named: privacyImage)
        lblMobileNumber.text = mobile
    }

}
