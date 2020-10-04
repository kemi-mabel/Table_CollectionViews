//
//  FoodTableViewCell.swift
//  New Project
//
//  Created by USER on 29/09/2020.
//

import UIKit

class FoodTableViewCell: UITableViewCell {

    @IBOutlet weak var cofeeShopName: UILabel!
    
    
    @IBOutlet weak var coffeeShopLocation: UILabel!
    
    
    @IBOutlet weak var coffeeShopType: UILabel!
    @IBOutlet weak var coffeeShopImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
