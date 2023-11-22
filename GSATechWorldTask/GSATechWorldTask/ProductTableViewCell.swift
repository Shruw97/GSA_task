//
//  ProductTableViewCell.swift
//  GSATechWorldTask
//
//  Created by saurabh wattamwar on 22/11/23.
//

import UIKit

class ProductTableViewCell: UITableViewCell {
    
    @IBOutlet weak var price: UILabel!
    
    @IBOutlet weak var productImageView: UIImageView!
    
    @IBOutlet weak var subTitle: UILabel!
    
    @IBOutlet weak var nameOfProduct: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    @IBOutlet weak var addProductToCartBtn: UIButton!
    

}
