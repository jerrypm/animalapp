//
//  ListAnimalInteractor.swift
//  Animal App
//
//  Created by Jeri Purnama Maulid on 12/01/24.
//

import Foundation

protocol IListAnimalInteractor: AnyObject {
    func fetchAnimalList()
    func fetchImageAnimal()
}

class ListAnimalInteractor: IListAnimalInteractor {
    private let presenter: IListAnimalPresenter
    private let apiService: IAPIService

    init(presenter: IListAnimalPresenter, apiService: IAPIService) {
        self.presenter = presenter
        self.apiService = apiService
    }

    func fetchAnimalList() {
        // here
    }

    func fetchImageAnimal() {
        // here
    }
}
