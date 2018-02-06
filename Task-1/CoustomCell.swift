//
//  CoustomCell.swift
//  Task-1
//
//  Created by Anand on 04/02/18.
//  Copyright © 2018 Rahul. All rights reserved.
//

import UIKit

class CoustomCell: UITableViewCell {

    @IBOutlet weak var productLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
