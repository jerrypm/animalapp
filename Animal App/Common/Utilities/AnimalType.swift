//
//  AnimalType.swift
//  Animal App
//
//  Created by Jeri Purnama Maulid on 10/01/24.
//

import Foundation

enum AnimalType: String {
    case elephant
    case lion
    case fox
    case dog
    case shark
    case turtle
    case whale
    case penguin

    var capitalizedString: String {
        return self.rawValue.capitalized
    }
}
