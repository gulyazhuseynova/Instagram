//
//  TableViewCell.swift
//  Instagram
//
//  Created by Gulyaz Huseynova on 07.08.22.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var profilPhoto: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var captionLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        profilPhoto.layer.cornerRadius = profilPhoto.frame.size.height / 2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
