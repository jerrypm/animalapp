//
//  ImageSrc.swift
//
//  Created by Jeri Purnama Maulid on 10/01/24
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

struct ImageSrc {
    var small: String?
    var large2x: String?
    var original: String?
    var portrait: String?
    var tiny: String?
    var medium: String?
    var landscape: String?
    var large: String?

    init(json: JSON) {
        small = json["small"].string
        large2x = json["large2x"].string
        original = json["original"].string
        portrait = json["portrait"].string
        tiny = json["tiny"].string
        medium = json["medium"].string
        landscape = json["landscape"].string
        large = json["large"].string
    }
}
