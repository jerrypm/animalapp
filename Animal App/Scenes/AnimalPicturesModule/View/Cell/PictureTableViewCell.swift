//
//  PictureTableViewCell.swift
//  Animal App
//
//  Created by Jeri Purnama Maulid on 13/01/24.
//

import SDWebImage
import UIKit

protocol PictureDelegate: AnyObject {
    func likePicture(id: Int)
}

class PictureTableViewCell: UITableViewCell {
    @IBOutlet weak var animalImage: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    
    weak var delegate: PictureDelegate?
    var idImage: Int?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func handleImageUrl(data: ImagePhotos) {
        idImage = data.id
        guard let imageURL = URL(string: data.src?.medium ?? .empty) else {
            return
        }
        animalImage.sd_setImage(with: imageURL, placeholderImage: UIImage(named: SC.emptyImage.value))
    }
    @IBAction func handleActionLike(_ sender: UIButton) {
        likeButton.setImage(sender.tag == 0 ? UIImage(systemName: "heart.fill") : UIImage(systemName: "heart"), for: .normal)
        delegate?.likePicture(id: idImage ?? 0)
    }
}
