//
//  Endpoint.swift
//  Animal App
//
//  Created by Jeri Purnama Maulid on 13/01/24.
//

import Alamofire
import Foundation

protocol IEndpoint {
    var method: HTTPMethod { get }
    var path: String { get }
    var parameter: Parameters? { get }
    var header: HTTPHeaders? { get }
    var encoding: ParameterEncoding { get }
}

enum AnimalEndpoint {
    case getAnimalList(animal: String)
    case getImageAnimal(animal: String)
}

extension AnimalEndpoint: IEndpoint {
    var path: String {
        switch self {
        case .getAnimalList:
            return SC.ninjasBaseURL
        case .getImageAnimal:
            return SC.pexelsbBaseURL
        }
    }

    var parameter: Parameters? {
        switch self {
        case .getAnimalList(let animal):
            return ["name": animal]
        case .getImageAnimal(let animal):
            return ["query": animal]
        }
    }

    var header: HTTPHeaders? {
        switch self {
        case .getAnimalList:
            return [
                "X-Api-Key": SC.ninjasAPIKey,
            ]
        case .getImageAnimal:
            return [
                "Authorization": SC.pexelsAPIKey,
            ]
        }
    }

    var encoding: ParameterEncoding {
        return URLEncoding.default
    }

    var method: HTTPMethod {
        return .get
    }
}
