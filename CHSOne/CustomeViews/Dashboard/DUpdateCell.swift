//
//  DUpdateCell.swift
//  CHSOne
//
//  Created by Hardik Ajmeri on 11/03/18.
//  Copyright © 2018 FutureScape. All rights reserved.
//

import UIKit

class DUpdateCell: UICollectionViewCell {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var btnViewAll: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func initializeWith(index: Int, title: String, description: String, buttonTitle: String) {
        lblTitle.tag = index
        lblDescription.tag = index
        btnViewAll.tag = index
        
        lblTitle.text = title
        lblDescription.text = description
        btnViewAll.setTitle(buttonTitle, for: .normal)
    }
    
}
