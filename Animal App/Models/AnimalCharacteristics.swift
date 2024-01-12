//
//  AnimalCharacteristics.swift
//
//  Created by Jeri Purnama Maulid on 10/01/24
//  Copyright (c) . All rights reserved.
//

import Foundation

struct AnimalCharacteristics: Codable {
    enum CodingKeys: String, CodingKey {
        case topSpeed = "top_speed"
        case commonName = "common_name"
        case numberOfSpecies = "number_of_species"
        case averageLitterSize = "average_litter_size"
        case ageOfWeaning = "age_of_weaning"
        case height
        case color
        case estimatedPopulationSize = "estimated_population_size"
        case skinType = "skin_type"
        case slogan
        case lifestyle
        case location
        case lifespan
        case diet
        case nameOfYoung = "name_of_young"
        case gestationPeriod = "gestation_period"
        case group
        case ageOfSexualMaturity = "age_of_sexual_maturity"
        case groupBehavior = "group_behavior"
        case mostDistinctiveFeature = "most_distinctive_feature"
        case biggestThreat = "biggest_threat"
        case weight
        case prey
        case habitat
    }

    var topSpeed: String?
    var commonName: String?
    var numberOfSpecies: String?
    var averageLitterSize: String?
    var ageOfWeaning: String?
    var height: String?
    var color: String?
    var estimatedPopulationSize: String?
    var skinType: String?
    var slogan: String?
    var lifestyle: String?
    var location: String?
    var lifespan: String?
    var diet: String?
    var nameOfYoung: String?
    var gestationPeriod: String?
    var group: String?
    var ageOfSexualMaturity: String?
    var groupBehavior: String?
    var mostDistinctiveFeature: String?
    var biggestThreat: String?
    var weight: String?
    var prey: String?
    var habitat: String?

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        topSpeed = try container.decodeIfPresent(String.self, forKey: .topSpeed)
        commonName = try container.decodeIfPresent(String.self, forKey: .commonName)
        numberOfSpecies = try container.decodeIfPresent(String.self, forKey: .numberOfSpecies)
        averageLitterSize = try container.decodeIfPresent(String.self, forKey: .averageLitterSize)
        ageOfWeaning = try container.decodeIfPresent(String.self, forKey: .ageOfWeaning)
        height = try container.decodeIfPresent(String.self, forKey: .height)
        color = try container.decodeIfPresent(String.self, forKey: .color)
        estimatedPopulationSize = try container.decodeIfPresent(String.self, forKey: .estimatedPopulationSize)
        skinType = try container.decodeIfPresent(String.self, forKey: .skinType)
        slogan = try container.decodeIfPresent(String.self, forKey: .slogan)
        lifestyle = try container.decodeIfPresent(String.self, forKey: .lifestyle)
        location = try container.decodeIfPresent(String.self, forKey: .location)
        lifespan = try container.decodeIfPresent(String.self, forKey: .lifespan)
        diet = try container.decodeIfPresent(String.self, forKey: .diet)
        nameOfYoung = try container.decodeIfPresent(String.self, forKey: .nameOfYoung)
        gestationPeriod = try container.decodeIfPresent(String.self, forKey: .gestationPeriod)
        group = try container.decodeIfPresent(String.self, forKey: .group)
        ageOfSexualMaturity = try container.decodeIfPresent(String.self, forKey: .ageOfSexualMaturity)
        groupBehavior = try container.decodeIfPresent(String.self, forKey: .groupBehavior)
        mostDistinctiveFeature = try container.decodeIfPresent(String.self, forKey: .mostDistinctiveFeature)
        biggestThreat = try container.decodeIfPresent(String.self, forKey: .biggestThreat)
        weight = try container.decodeIfPresent(String.self, forKey: .weight)
        prey = try container.decodeIfPresent(String.self, forKey: .prey)
        habitat = try container.decodeIfPresent(String.self, forKey: .habitat)
    }
}
