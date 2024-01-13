//
//  ImageBaseModel.swift
//
//  Created by Jeri Purnama Maulid on 10/01/24
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

struct ImageBaseModel {
    var totalResults: Int?
    var perPage: Int?
    var photos: [ImagePhotos]?
    var nextPage: String?
    var page: Int?

    init(json: JSON) {
        totalResults = json["total_results"].int
        perPage = json["per_page"].int
        photos = json["photos"].arrayValue.map { ImagePhotos(json: $0) }
        nextPage = json["next_page"].string
        page = json["page"].int
    }
}
