//
//  TableViewCell.swift
//  DiseaseScale
//
//  Created by WaterFlower124 on 8/12/18.
//  Copyright © 2018 WaterFlower125. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var lblOption: UILabel!
    @IBOutlet weak var lblDesc: UILabel!
    @IBOutlet weak var ctsView: UIView!
    @IBOutlet weak var optionScore: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
