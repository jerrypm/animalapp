//
//  PictureTableViewCell.swift
//  Animal App
//
//  Created by Jeri Purnama Maulid on 13/01/24.
//

import SDWebImage
import UIKit

class PictureTableViewCell: UITableViewCell {
    @IBOutlet weak var animalImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func handleImageUrl(urlString: String) {
        guard let imageURL = URL(string: urlString) else {
            return
        }
        animalImage.sd_setImage(with: imageURL, placeholderImage: UIImage(named: SC.emptyImage.value))
    }
}
