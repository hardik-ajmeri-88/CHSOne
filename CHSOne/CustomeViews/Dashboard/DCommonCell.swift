//
//  DCommonCell.swift
//  CHSOne
//
//  Created by Hardik Ajmeri on 10/03/18.
//  Copyright © 2018 FutureScape. All rights reserved.
//

import UIKit

class DCommonCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func initializeCellWith(index: Int, image: String, title: String, bgColor: UIColor) {
        self.imageView.tag = index
        self.titleLabel.tag = index
        self.imageView.image = UIImage(named: image)
        self.titleLabel.text = title
        self.backgroundColor = bgColor
    }
}
