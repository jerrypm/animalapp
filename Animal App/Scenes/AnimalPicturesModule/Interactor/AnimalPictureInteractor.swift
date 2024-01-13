//
//  AnimalPictureInteractor.swift
//  Animal App
//
//  Created by Jeri Purnama Maulid on 12/01/24.
//

import Foundation

protocol IAnimalPictureInteractor: AnyObject {
    func fetchImageAnimal(animalName: String)
}

class AnimalPictureInteractor: IAnimalPictureInteractor {
    private let apiService: IAPIService
    var presenter: IAnimalPicturePresenter
    var imagesModel: ImageBaseModel?

    init(presenter: IAnimalPicturePresenter, apiService: IAPIService) {
        self.presenter = presenter
        self.apiService = apiService
    }

    func fetchImageAnimal(animalName: String) {
        apiService.getImageAnimal(animal: animalName) { result in
            switch result {
            case .success(let value):
                let imagesModel = ImageBaseModel(json: value)
                self.presenter.presentImagesData(imagesModel: imagesModel)
            case .failure(let error):
                print(error)
            }
        }
    }
}
