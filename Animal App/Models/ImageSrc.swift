//
//  ImageSrc.swift
//
//  Created by Jeri Purnama Maulid on 10/01/24
//  Copyright (c) . All rights reserved.
//

import Foundation

struct ImageSrc: Codable {
    enum CodingKeys: String, CodingKey {
        case small
        case large2x
        case original
        case portrait
        case tiny
        case medium
        case landscape
        case large
    }

    var small: String?
    var large2x: String?
    var original: String?
    var portrait: String?
    var tiny: String?
    var medium: String?
    var landscape: String?
    var large: String?

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        small = try container.decodeIfPresent(String.self, forKey: .small)
        large2x = try container.decodeIfPresent(String.self, forKey: .large2x)
        original = try container.decodeIfPresent(String.self, forKey: .original)
        portrait = try container.decodeIfPresent(String.self, forKey: .portrait)
        tiny = try container.decodeIfPresent(String.self, forKey: .tiny)
        medium = try container.decodeIfPresent(String.self, forKey: .medium)
        landscape = try container.decodeIfPresent(String.self, forKey: .landscape)
        large = try container.decodeIfPresent(String.self, forKey: .large)
    }
}
