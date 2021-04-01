//
//  TwoTableViewCell.swift
//  Easy
//
//  Created by MacBook Pro on 27/3/21.
//

import UIKit

class TwoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageview2: UIImageView!
    
    
    @IBOutlet weak var labeltwo: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
