//
//  AnimalTaxonomy.swift
//
//  Created by Jeri Purnama Maulid on 10/01/24
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

struct AnimalTaxonomy {
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

    init(json: JSON) {
        genus = json[CodingKeys.genus.rawValue].stringValue
        scientificName = json[CodingKeys.scientificName.rawValue].stringValue
        phylum = json[CodingKeys.phylum.rawValue].stringValue
        classProperty = json[CodingKeys.classProperty.rawValue].stringValue
        order = json[CodingKeys.order.rawValue].stringValue
        kingdom = json[CodingKeys.kingdom.rawValue].stringValue
        family = json[CodingKeys.family.rawValue].stringValue
    }
}
