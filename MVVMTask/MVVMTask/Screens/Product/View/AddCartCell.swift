//
//  AddCartCell.swift
//  MVVMTask
//
//  Created by Gaurav Bhatt on 18/03/23.
//

import UIKit

class AddCartCell: UITableViewCell {

    @IBOutlet weak var img_Product: UIImageView!
    @IBOutlet weak var lbl_Title: UILabel!
    @IBOutlet weak var btn_Cancel: UIButton!
    @IBOutlet weak var lbl_Rating: UILabel!
    @IBOutlet weak var lbl_Price: UILabel!
    
    @IBOutlet weak var lbl_Description: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
