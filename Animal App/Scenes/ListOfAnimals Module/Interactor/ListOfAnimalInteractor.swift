//
//  ListOfAnimalInteractor.swift
//  Animal App
//
//  Created by Jeri Purnama Maulid on 12/01/24.
//

import Foundation

protocol IListOfAnimalInteractor: AnyObject {
    func fetchAnimalList()
    func fetchAnimalfromType(animal: AnimalType)
}

class ListOfAnimalInteractor: IListOfAnimalInteractor {
    private let apiService: IAPIService
    var presenter: IListOfAnimalPresenter
    var animalList = [AnimalBaseModel]()

    init(presenter: IListOfAnimalPresenter, apiService: IAPIService) {
        self.presenter = presenter
        self.apiService = apiService
    }

    func fetchAnimalList() {
        for animal in AnimalType.allCases {
            fetchAnimalfromType(animal: animal)
        }
    }

    func fetchAnimalfromType(animal: AnimalType) {
        apiService.getAnimalList(animal: animal.rawValue) { result in
            switch result {
            case .success(let value):

                if let jsonArray = value.array {
                    let animalModelsFromJSON = jsonArray.map { AnimalBaseModel(json: $0) }
                    self.animalList.append(contentsOf: animalModelsFromJSON)
                }
                self.presenter.presentAnimalList(list: self.animalList)
            case .failure(let error):
                print(error)
            }
        }
    }
}
