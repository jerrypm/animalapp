//
//  ListOfAnimalInteractor.swift
//  Animal App
//
//  Created by Jeri Purnama Maulid on 12/01/24.
//

import Foundation

protocol IListOfAnimalInteractor: AnyObject {
    func getAnimalList()
    func fetchAnimalList()
    func fetchImageAnimal()
}

class ListOfAnimalInteractor: IListOfAnimalInteractor {
    private let apiService: IAPIService
    var presenter: IListOfAnimalPresenter
    var animalList = [String]()

    init(presenter: IListOfAnimalPresenter, apiService: IAPIService) {
        self.presenter = presenter
        self.apiService = apiService
    }

    func getAnimalList() {
        for animal in AnimalType.allCases {
            animalList.append(animal.capitalizedString)
        }

        presenter.presentAnimalList(list: animalList)
    }

    func fetchAnimalList() {
        #warning("here")
    }

    func fetchImageAnimal() {
        #warning("here")
    }
}
