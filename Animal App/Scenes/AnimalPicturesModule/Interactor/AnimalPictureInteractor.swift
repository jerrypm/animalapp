//
//  AnimalPictureInteractor.swift
//  Animal App
//
//  Created by Jeri Purnama Maulid on 12/01/24.
//

import Foundation

protocol IAnimalPictureInteractor: AnyObject {
    func fetchImageAnimal(animalName: String)
    func addItemToFavorite(id: Int)
}

class AnimalPictureInteractor: IAnimalPictureInteractor {
    private let apiService: IAPIService
    var presenter: IAnimalPicturePresenter
    var imagesModel: ImageBaseModel?
    private let bookmarkDataService = BookmarkDataService()

    init(presenter: IAnimalPicturePresenter, apiService: IAPIService) {
        self.presenter = presenter
        self.apiService = apiService
    }

    func fetchImageAnimal(animalName: String) {
        apiService.getImageAnimal(animal: animalName) { result in
            switch result {
            case .success(let value):
                self.imagesModel = ImageBaseModel(json: value)
                if let model = self.imagesModel {
                    self.presenter.presentImagesData(imagesModel: model)
                }
            case .failure(let error):
                print(error)
            }
        }
    }
    
    // Local data
    func addItemToFavorite(id: Int) {
        imagesModel?.photos?.forEach({ photo in
            if photo.id == id {
                bookmarkDataService.add(
                    name: presenter.animalName ?? .empty,
                    url: photo.src?.medium ?? .empty)
            }
        })
    }
}
