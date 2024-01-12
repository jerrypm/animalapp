//
//  AnimalTaxonomy.swift
//
//  Created by Jeri Purnama Maulid on 10/01/24
//  Copyright (c) . All rights reserved.
//

import Foundation

struct AnimalTaxonomy: Codable {
    enum CodingKeys: String, CodingKey {
        case genus
        case scientificName = "scientific_name"
        case phylum
        case classProperty = "class"
        case order
        case kingdom
        case family
    }

    var genus: String?
    var scientificName: String?
    var phylum: String?
    var classProperty: String?
    var order: String?
    var kingdom: String?
    var family: String?

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        genus = try container.decodeIfPresent(String.self, forKey: .genus)
        scientificName = try container.decodeIfPresent(String.self, forKey: .scientificName)
        phylum = try container.decodeIfPresent(String.self, forKey: .phylum)
        classProperty = try container.decodeIfPresent(String.self, forKey: .classProperty)
        order = try container.decodeIfPresent(String.self, forKey: .order)
        kingdom = try container.decodeIfPresent(String.self, forKey: .kingdom)
        family = try container.decodeIfPresent(String.self, forKey: .family)
    }
}
