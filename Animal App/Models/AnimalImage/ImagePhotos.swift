//
//  ImagePhotos.swift
//
//  Created by Jeri Purnama Maulid on 10/01/24
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

struct ImagePhotos {
    var alt: String?
    var id: Int?
    var liked: Bool?
    var height: Int?
    var photographer: String?
    var avgColor: String?
    var photographerUrl: String?
    var photographerId: Int?
    var url: String?
    var src: ImageSrc?
    var width: Int?

    init(json: JSON) {
        alt = json["alt"].string
        id = json["id"].int
        liked = json["liked"].bool
        height = json["height"].int
        photographer = json["photographer"].string
        avgColor = json["avg_color"].string
        photographerUrl = json["photographer_url"].string
        photographerId = json["photographer_id"].int
        url = json["url"].string
        src = ImageSrc(json: json["src"])
        width = json["width"].int
    }
}
