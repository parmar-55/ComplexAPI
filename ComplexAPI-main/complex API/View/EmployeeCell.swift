//
//  EmployeeCell.swift
//  swiftyjson
//
//  Created by Demo 01 on 16/05/23.
//  Copyright © 2023 Yogesh Patel. All rights reserved.
//

import UIKit

class EmployeeCell: UITableViewCell {

    @IBOutlet weak var lblEmployeeName: UILabel!
    
    @IBOutlet weak var lblSalary: UILabel!
    
    @IBOutlet weak var lblAge: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
