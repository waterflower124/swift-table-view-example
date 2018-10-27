//
//  ScoreTableViewCell.swift
//  DiseaseScale
//
//  Created by WaterFlower124 on 8/13/18.
//  Copyright © 2018 WaterFlower125. All rights reserved.
//

import UIKit

class ScoreTableViewCell: UITableViewCell {

    @IBOutlet weak var itemname_Label: UILabel!
    @IBOutlet weak var itemscore_Label: UILabel!
    @IBOutlet weak var itemscoreDesc_Label: UILabel!
    //    @IBOutlet weak var itemname_Label: UILabel!
//    @IBOutlet weak var itemscore_Label: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
