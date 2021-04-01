//
//  TableViewCell.swift
//  Easy
//
//  Created by MacBook Pro on 27/3/21.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var imageview1: UIImageView!
    
    
    @IBOutlet weak var labelcontinent1: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
