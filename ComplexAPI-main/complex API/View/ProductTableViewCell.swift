//
//  ProductTableViewCell.swift
//  swiftyjson
//
//  Created by Demo 01 on 28/04/23.
//  Copyright © 2023 Yogesh Patel. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    @IBOutlet weak var productTitleLabel: UILabel!
    @IBOutlet weak var categoryLbl: UILabel!
    @IBOutlet weak var descreptionLabel: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    @IBOutlet weak var ratingBtn: UIButton!
    
    @IBOutlet weak var imageProduct: UIImageView!
    
    
  
    
    override func awakeFromNib() {
        super.awakeFromNib()
        //productBackgroundView.clipsToBounds = false
        //productBackgroundView.layer.cornerRadius = 15
        
        imageProduct.layer.cornerRadius = 10
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
