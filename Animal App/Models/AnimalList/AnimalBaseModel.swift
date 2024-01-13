//
//  AnimalBaseModel.swift
//
//  Created by Jeri Purnama Maulid on 10/01/24
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

struct AnimalBaseModel {
    enum CodingKeys: String, CodingKey {
        case locations
        case taxonomy
        case characteristics
        case name
    }

    var locations: [String]?
    var taxonomy: AnimalTaxonomy?
    var characteristics: AnimalCharacteristics?
    var name: String?

    init(json: JSON) {
        locations = json[CodingKeys.locations.rawValue].arrayValue.map { $0.stringValue }
        taxonomy = AnimalTaxonomy(json: json[CodingKeys.taxonomy.rawValue])
        characteristics = AnimalCharacteristics(json: json[CodingKeys.characteristics.rawValue])
        name = json[CodingKeys.name.rawValue].stringValue
    }
}
