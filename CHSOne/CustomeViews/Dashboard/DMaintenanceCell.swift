//
//  DMaintenanceCell.swift
//  CHSOne
//
//  Created by Hardik Ajmeri on 11/03/18.
//  Copyright © 2018 FutureScape. All rights reserved.
//

import UIKit

class DMaintenanceCell: UICollectionViewCell {
    
    @IBOutlet weak var lblAmount: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var btnPay: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func initializeWith(index: Int, amount: String, description: String, buttonTitle: String) {
        lblAmount.tag = index
        lblDescription.tag = index
        btnPay.tag = index
        
        lblAmount.text = amount
        lblDescription.text = description
        btnPay.setTitle(buttonTitle, for: .normal)
    }

}
