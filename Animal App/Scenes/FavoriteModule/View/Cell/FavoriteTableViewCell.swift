//
//  FavotireTableViewCell.swift
//  Animal App
//
//  Created by Jeri Purnama Maulid on 15/01/24.
//

import UIKit
import SDWebImage

class FavoriteTableViewCell: UITableViewCell {
    @IBOutlet weak var animalImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func favoriteImage(data: BookmarkEntity) {
        titleLabel.text = data.title
        guard let imageURL = URL(string: data.url ?? .empty) else {
            return
        }
        animalImageView.sd_setImage(with: imageURL, placeholderImage: UIImage(named: SC.emptyImage.value))
    }
}
