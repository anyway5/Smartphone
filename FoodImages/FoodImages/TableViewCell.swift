//
//  TableViewCell.swift
//  FoodImages
//
//  Created by 王鹏宇 on 2022/2/5.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var imgViewCell: UIImageView!
    @IBOutlet weak var lblcell: UILabel!
    //    @IBOutlet weak var imgViewCell: UIImageView!
//    @IBOutlet weak var lblcell: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
