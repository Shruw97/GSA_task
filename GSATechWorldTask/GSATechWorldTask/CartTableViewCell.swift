//
//  CartTableViewCell.swift
//  GSATechWorldTask
//
//  Created by saurabh wattamwar on 22/11/23.
//

import UIKit

class CartTableViewCell: UITableViewCell {

   
    @IBOutlet weak var productImage: UIImageView!
    
    @IBOutlet weak var productName: UILabel!
    
    @IBOutlet weak var productPrice: UILabel!
   
    
    @IBOutlet weak var productCount: UILabel!
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
        
        
    }

    @IBAction func clickToRemoveItem(_ sender: UIButton) {
    }
    
    
    @IBAction func clickToAddItem(_ sender: UIButton) {
    }
    
}
