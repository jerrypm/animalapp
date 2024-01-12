//
//  AnimalBaseModel.swift
//
//  Created by Jeri Purnama Maulid on 10/01/24
//  Copyright (c) . All rights reserved.
//

import Foundation

struct AnimalBaseModel: Codable {
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

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        locations = try container.decodeIfPresent([String].self, forKey: .locations)
        taxonomy = try container.decodeIfPresent(AnimalTaxonomy.self, forKey: .taxonomy)
        characteristics = try container.decodeIfPresent(AnimalCharacteristics.self, forKey: .characteristics)
        name = try container.decodeIfPresent(String.self, forKey: .name)
    }
}
