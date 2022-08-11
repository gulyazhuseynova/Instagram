//
//  CollectionViewCell.swift
//  Instagram
//
//  Created by Gulyaz Huseynova on 08.08.22.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var storyImage: UIImageView!
    @IBOutlet weak var storyLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        storyImage.layer.cornerRadius = storyImage.frame.size.height / 2
    }

}
