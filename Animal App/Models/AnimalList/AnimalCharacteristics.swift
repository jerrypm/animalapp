//
//  AnimalCharacteristics.swift
//
//  Created by Jeri Purnama Maulid on 10/01/24
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

struct AnimalCharacteristics {
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

    init(json: JSON) {
        topSpeed = json["topSpeed"].string
        commonName = json["commonName"].string
        numberOfSpecies = json["numberOfSpecies"].string
        averageLitterSize = json["averageLitterSize"].string
        ageOfWeaning = json["ageOfWeaning"].string
        height = json["height"].string
        color = json["color"].string
        estimatedPopulationSize = json["estimatedPopulationSize"].string
        skinType = json["skinType"].string
        slogan = json["slogan"].string
        lifestyle = json["lifestyle"].string
        location = json["location"].string
        lifespan = json["lifespan"].string
        diet = json["diet"].string
        nameOfYoung = json["nameOfYoung"].string
        gestationPeriod = json["gestationPeriod"].string
        group = json["group"].string
        ageOfSexualMaturity = json["ageOfSexualMaturity"].string
        groupBehavior = json["groupBehavior"].string
        mostDistinctiveFeature = json["mostDistinctiveFeature"].string
        biggestThreat = json["biggestThreat"].string
        weight = json["weight"].string
        prey = json["prey"].string
        habitat = json["habitat"].string
    }
}
