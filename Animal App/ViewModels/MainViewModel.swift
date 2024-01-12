//
//  MainViewModel.swift
//  Animal App
//
//  Created by Jeri Purnama Maulid on 10/01/24.
//

import Foundation
import SwiftyJSON

class MainViewModel: NSObject {
    private var apiService: APIService!

    override init() {
        super.init()
        self.apiService = APIService()
    }
    
    func fetchAnimalList() {
        // here
    }
    
    func fetchImageAnimal() {
        // here
    }
}
