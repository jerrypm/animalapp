//
//  Constants.swift
//  Animal App
//
//  Created by Jeri Purnama Maulid on 10/01/24.
//

import Foundation

typealias SC = StringConstant

enum StringConstant: String {
    static let ninjasBaseURL = "https://api.api-ninjas.com/v1/animals" // data animal
    static let pexelsbBaseURL = "https://api.pexels.com/v1/search" // image

    static let ninjasAPIKey = "pfFQJxLiPMYqvY5rZXbYdw==VBjYVanTRFZdEhx9"
    static let pexelsAPIKey = "F0RsC7L6viQO7bzFmZTKs7hwGWhXlwm5TjAozyXUwkTmB8INisxbwjVg"

    // MARK: - Empty & symbol

    case empty = ""
    case space = " "
    case dash = "-"
    case dot = "."
    case coma = ","

    case titleListAnimal = "List of Animals"

    // MARK: - Image assets

    case emptyImage

    var value: String {
        return rawValue
    }
}
